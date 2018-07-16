package com.bdqa.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * cookie的公用操作
 * 
 * @author SDJX
 *
 */
public class CookieUtil {

	/**
	 * 根据cooieName获取cookie
	 * 
	 * @param cookies:所有cookie
	 * @param cookieName:cookie名字
	 * @return
	 */
	public static Cookie getCookieByName(Cookie[] cookies, String cookieName) {
		if(cookies==null || cookies.length==0) {
			return null;
		}
		
		for (Cookie cookie : cookies) {
			// 如果找到name等于cookieName的 cookie对象
			if (cookieName.equals(cookie.getName())) {
				return cookie;
			}
		}
		return null;
	}

	/**
	 * 记录用户上次访问时间 (cookie)
	 */
	public static void visitTime(HttpServletRequest req, HttpServletResponse resp) {
		// 创建cookie记录上次访问的时间
		Cookie last_time = new Cookie("last_time", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));

		// 最大有效时间 1年
		Integer maxAge = 60 * 60 * 24 * 365;
		last_time.setMaxAge(maxAge);

		// 设置路径
		last_time.setPath("/");

		resp.addCookie(last_time);
	}

	/**
	 * 记录用户访问网站次数 (每日累计一次) (cookie)
	 */
	public static void visitCount(HttpServletRequest req, HttpServletResponse resp) {
		// 获取所有cookie
		Cookie[] cookies = req.getCookies();

		// 获取当前日期
		String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());

		// 获取用户的访问日期
		Cookie visitTime = CookieUtil.getCookieByName(cookies, "visit_time");

		// 获取用户的访问次数
		Cookie visitCount = CookieUtil.getCookieByName(cookies, "visit_count");

		// 如果用户是第一次访问
		if (visitTime == null || visitCount == null) {
			// 1.创建用户 访问日期 与 访问次数Cookie
			visitTime = new Cookie("visit_time", currentDate);
			visitCount = new Cookie("visit_count", "1");

			// 2.设置最大有效时间 1年
			Integer maxAge = 60 * 60 * 24 * 365;
			visitTime.setMaxAge(maxAge);
			visitCount.setMaxAge(maxAge);

			// 3.设置访问路径
			visitTime.setPath("/");
			visitCount.setPath("/");

			// 4.加入响应
			resp.addCookie(visitTime);
			resp.addCookie(visitCount);

			return;
		}

		// 如果同一天第二次访问
		if (visitTime.getValue().equals(currentDate)) {
			return;
		}

		// 如果是第二天访问
		// 1.更新访问时间
		visitTime.setValue(currentDate);

		// 2.更新访问次数
		Integer count = Integer.valueOf(visitCount.getValue()) + 1;
		// 访问次数=当前访问次数+1
		visitCount.setValue(Integer.toString(count));

		// 3. 加入响应
		resp.addCookie(visitTime);
		resp.addCookie(visitCount);

	}

}
