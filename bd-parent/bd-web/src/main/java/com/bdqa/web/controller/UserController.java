package com.bdqa.web.controller;

import java.rmi.RemoteException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.dubbo.config.annotation.Reference;
import com.bdqa.common.util.DESUtil;
import com.bdqa.common.util.SendEmail;
import com.bdqa.user.domain.User;
import com.bdqa.user.service.UserService;
@Controller
@RequestMapping("/user")
public class UserController {

	@Reference
	private UserService userService;

	@RequestMapping("/admin")
	@ResponseBody
	public Map<String,Object> index() throws Exception{
		System.out.println(1111);
		List<User> list =  userService.queryAll();
		Map<String,Object> map = new HashMap<>();
		map.put("code", 0);
		map.put("msg", "查询成功");
		map.put("count", list.size());
		map.put("data", list);
		return map;
	}

	/**
	 * 跳转注册页面
	 * @return
	 */
	@RequestMapping("/register")
	public String toRegister() {
		return "register";
	}
	
	
	/**
	 * 注册激活
	 * @return
	 */
	@GetMapping("/activate")
	public ModelAndView activate(@RequestParam String state) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			String destate = state.replace(" ", "+");
			System.out.println(destate);
			System.out.println(DESUtil.decrytor(destate));
			userService.updateUserState(Integer.parseInt(DESUtil.decrytor(destate).split("_")[0]));
			long a = System.currentTimeMillis(); 
			long b =  Long.parseLong(DESUtil.decrytor(destate).split("_")[1]);
			long bool = a-b;
			if (bool > 300000) {
				modelAndView.setViewName("state");
				modelAndView.addObject("message", "激活超时，5秒后跳转注册页面");
				modelAndView.addObject("id", 1);
				modelAndView.addObject("url", "/user/register");
			}else {
				modelAndView.setViewName("state");
				modelAndView.addObject("message", "激活成功，5秒后跳转首页");
				modelAndView.addObject("id", 0);
				modelAndView.addObject("url", "/index");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return modelAndView;
	}
	
	
	/**
	 * 校验用户名是否存在
	 * @throws RemoteException 
	 */
	@RequestMapping(value = "/isExist",produces="application/json;charset=UTF-8")
	@ResponseBody
	public String isExist(String userName) throws RemoteException {
		//判断用户名是否存在
		User user =userService.queryUserByName(userName);
		//返回json数据
		if(user==null) {
			return  "{\"result\":\"true\"}";
		}else {
			return  "{\"result\":\"false\"}";
		}
	}

	
	
	/**
	 * 用户注册
	 * @param user
	 * @return
	 * @throws RemoteException 
	 */
	@RequestMapping(value="/add",produces="application/json;charset=UTF-8")
	@ResponseBody
	public  String add(User user) throws RemoteException {
		//添加用户
		int result = userService.add(user);
		String url;
		try {
			url = DESUtil.encrytor(user.getId()+"_"+System.currentTimeMillis());
			SendEmail.sendEmail(user.getEmail(), "/activate/?state="+url,"点击链接激活账号","点击链接激活账号，跳转首页");
		} catch (Exception e) {
			e.printStackTrace();
		}
		//判断是否添加成功
		if(result>0) {
			return  "{\"result\":\"true\"}";
		}else {
			return  "{\"result\":\"false\"}";
		}
	}
	
	/**
	 * 用户更改密码发送邮件
	 * @param user
	 * @return
	 * @throws RemoteException 
	 */
	@GetMapping(value="/sendEmail")
	@ResponseBody
	public  String sendEmail(User user) throws RemoteException {
		User user2 = userService.queryUserByName(user.getUserName());
		if (user2==null) {
			return  "{\"result\":\"false\"}";
		}
		String url;
		try {
			url = DESUtil.encrytor(user2.getId()+"_"+System.currentTimeMillis());
			SendEmail.sendEmail(user2.getEmail(), "/upadteView/?url="+url+"&userName="+user2.getUserName(),"点击链接修改密码","点击链接修改密码");
		} catch (Exception e) {
			e.printStackTrace();
		}
		//判断是否添加成功
		return  "{\"result\":\"true\"}";
	}
	
	/**
	 * 用户点击邮件跳转修改密码
	 * @param user
	 * @return
	 */
	@GetMapping(value="/upadteView")
	@ResponseBody
	public  ModelAndView upadteView(String url,String userName) {
		ModelAndView modelAndView = new ModelAndView();
		try {
			String destate = url.replace(" ", "+");
			long a = System.currentTimeMillis(); 
			long b =  Long.parseLong(DESUtil.decrytor(destate).split("_")[1]);
			if (a-b > 300000) {
				modelAndView.setViewName("state");
				modelAndView.addObject("message", "点击超时，5秒后跳转注册页面");
				modelAndView.addObject("id", 1);
				modelAndView.addObject("url", "/user/register");
			}else {
				modelAndView.addObject("userName", userName);
				modelAndView.addObject("id", DESUtil.decrytor(destate).split("_")[0]);
				modelAndView.setViewName("forget_two");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return modelAndView;
	}
	
	
	/**
	 * 用户点击邮件跳转修改密码
	 * @param user
	 * @return
	 * @throws RemoteException 
	 */
	@PostMapping(value="/updateUser")
	@ResponseBody
	public  String updateUser(String url,User user) throws RemoteException {
		int i = userService.updateUserPassword(user);
		if (i < 0) {
				return  "{\"result\":\"fales\"}";
			}else {
				return  "{\"result\":\"true\"}";
			}
	}
	
}
