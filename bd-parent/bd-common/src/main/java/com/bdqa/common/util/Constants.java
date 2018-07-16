package com.bdqa.common.util;

import java.text.SimpleDateFormat;

/**
 * 常量工具类
 * @author SDJX
 *
 */
public class Constants {
	public final static String USER_SESSION = "userSession";
	public final static String SYS_MESSAGE = "message";
	public final static int PAGE_SIZE = 8;
	
	public static void main(String[] args) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println(sdf.format(System.currentTimeMillis()));
	}
}
