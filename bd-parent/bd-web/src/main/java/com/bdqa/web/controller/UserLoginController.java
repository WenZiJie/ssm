package com.bdqa.web.controller;

import java.rmi.RemoteException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.bdqa.common.util.Base64Utils;
import com.bdqa.common.util.RSACryptography;
import com.bdqa.user.domain.User;
import com.bdqa.user.service.UserService;

@Controller
public class UserLoginController {
	
	@Reference
   private UserService userService;
	
   
   
   /**
    * 进入问题首页
    */
   @RequestMapping("/index")
   public String toIndex() {
	 return "index";
   }
   
	/**
	 * 用户登陆
	 * @throws RemoteException 
	 */
	@PostMapping("/login")
	@ResponseBody
	public String login(User user,String isFreeLogin,HttpSession session,HttpServletResponse resp,HttpServletRequest req) throws RemoteException {
		System.out.println(isFreeLogin);
		//根据用户名和密码查询用户
		User loginUser = userService.loginUser(user.getUserName(), user.getPassWord());
		
		//如果用户名密码输入有误
		if(loginUser==null) {
			return  "{\"result\":\"false\"}";
		}
		
		if(loginUser.getState()==0) {
			Map<String, String> hash=new HashMap<>();
			hash.put("qq.com", "http://mail.qq.com");
			hash.put("163.com", "http://mail.163.com");
			hash.put("126.com", "http://mail.126.com");
			String email = loginUser.getEmail().split("@")[1];
			return  "{\"result\":\"statefalse\",\"email\":\""+hash.get(email)+"\"}";
		}
        //如果输入正确
		//更新用户的访问时间及访问ip
		String ip=req.getRemoteAddr().equals("0:0:0:0:0:0:0:1")?"192.168.1.34":req.getRemoteAddr();
		userService.updateUserAction(ip, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()), loginUser.getId());
		
		
		//如果勾选了下次免登陆
		if(isFreeLogin != null && isFreeLogin != "") {
			//4.如果下次自动登陆
				//存放cookie
				String taken=user.getUserName().trim();

				//1. 当前时间戳+一周时间
				taken+="_"+(System.currentTimeMillis()+7*24*60*60*1000);
				
				//2. 加盐
				taken+="_"+"wr123y";
				
				//3. ip地址
				taken+="_"+ip;
				// 加密
				byte[] b=null;
				//System.out.println("加密后的用户名:"+taken);
				
				try {
					//获取公钥 用于加密
					b=RSACryptography.encrypt(taken.getBytes(), RSACryptography.getPublicKey(RSACryptography.PUB_KEY));
				} catch (Exception e) {
					e.printStackTrace();
				}

				//使用Base64进行编码  然后 加入 cookie
				Cookie cookie=new Cookie("login_info", Base64Utils.encode(b));
					cookie.setPath("/");
					cookie.setMaxAge(7*24*60*60);
					resp.addCookie(cookie);
		}

		session.setAttribute("userSession", loginUser);
		return  "{\"result\":\"true\"}";
	}
	
	
	/**
	 * 判断是否是登录状态
	 * 0:非登录状态
	 * 1:登录状态
	 */               
	@RequestMapping(value="/isLogin",produces="application/json; charset=UTF-8")
	@ResponseBody
	public String  isLoginState(HttpSession session) {
		User user = (User) session.getAttribute("userSession");
		
		if(user==null) {
			return  "{\"isLogin\":\"0\"}";
		}
		
		return "{\"isLogin\":\"1\"}";
		
	}
}
