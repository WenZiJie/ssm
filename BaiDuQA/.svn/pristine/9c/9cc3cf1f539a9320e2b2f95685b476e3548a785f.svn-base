package com.bdqa.web.interceptor;

import java.security.PrivateKey;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.plugin.Intercepts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bdqa.common.util.Base64Utils;
import com.bdqa.common.util.CookieUtil;
import com.bdqa.common.util.RSACryptography;
import com.bdqa.user.domain.User;
import com.bdqa.user.service.UserService;
import com.bdqa.user.service.impl.UserServiceImpl;
/**
 * 免登陆拦截器
 * @author SDJX
 *
 */
@Component
public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Autowired
	private UserService userService;
	private Set<String> uriSet=new HashSet<String>();
	{
		uriSet.add("/login");
		uriSet.add("/toLogin");
	}
	
	/**
	 *在请求处理之前进行调用（Controller方法调用之前
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
	      Cookie loginInfo = CookieUtil.getCookieByName(request.getCookies(), "login_info");
	      
	      if(loginInfo!=null) {
	    	//取taken值 需要反向解密

	  		//1). 解密    admin_1522916666108_wr1223_192.168.1.1
	  		String taken=loginInfo.getValue();

	  		try {
	  			//a).获取私钥 用于解密
	  			PrivateKey privateKey =RSACryptography.getPrivateKey(RSACryptography.PRI_KEY);

	  			byte[] decryptedBytes=RSACryptography.decrypt(Base64Utils.decode(taken), privateKey);

	  			//b).把解密后的用户名 转换成字符串
	  			taken=new String(decryptedBytes);
	  			//System.out.println("解密后的taken:"+taken);
	  		} catch (Exception e) {
	  			e.printStackTrace();
	  		}
	  		

	  		//2). 校验是否过过期 (如果当前时间大于cookie的有效时间,则cookie失效,返回登录)
	  		Long last_time=Long.valueOf(taken.split("_")[1]);
	  		if(System.currentTimeMillis()>last_time) {
	  			//过期,重新登录
	  			System.out.println("cookie过期,重新登录");
	  			return true;
	  		}

	  		//3).校验IP地址
	  		String ip=request.getRemoteAddr().equals("0:0:0:0:0:0:0:1")==true?"192.168.1.34":request.getRemoteAddr();
	  		//System.out.println(ip);
	  		if(!taken.split("_")[3].equals(ip)) {
	  			// 过期， 重新登录
	  			System.out.println("cookie被盗用..， ");
	  			return true;
	  		}

	  		//4).如果cookie存在
	  		// (从cookie中获取用户信息   2.将用户信息保存到sesion中)
	  		User user=userService.queryUserByName(taken.split("_")[0]);
	  		request.getSession().setAttribute("userSession",user);
	      }
		return true;
	}

	
	

	/**
	 * 在整个请求结束之后被调用，也就是在DispatcherServlet 渲染了对应的视图之后执行（主要是用于进行资源清理工作）
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

	/**
	 * 请求处理之后进行调用，但是在视图被渲染之前（Controller方法调用之后）
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	

}
