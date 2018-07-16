package com.bdqa.common.util;

import java.security.SecureRandom;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;  

/**
 * 
 * 这是一个使用DES实现对对称加密工具类, DES优点是生成的加密结果不想RAS那么长，适用于URL等
 */
public class DESUtil {  
	/**
	 * 密钥，
	 * 通俗说就是 加密，解密用的那把钥匙。 当发生密钥泄露是很恐怖的一件事
	 */
	private final static String secretKey = "qwkje12123qwe";
	
	// base64 对二进制编码，解码
	private static final Base64.Decoder decoder = Base64.getDecoder();
	private static final Base64.Encoder encoder = Base64.getEncoder();
	
	
	/**
	 * 对文本加密 ， 此代码做了两件事
	 * 
	 * 1. 将text使用DES加密， 其结果是一个二进制
	 * 
	 * 2. 因为二进制不方便展示。 所以使用BASE64将二进制编码成字符串，用于展示
	 */
	public static String encrytor(String text) throws Exception{
		//DES算法要求有一个可信任的随机数源  
        SecureRandom sr = new SecureRandom();  
        //从原始密钥数据创建DESKeySpec对象  
        DESKeySpec desKeySpec = new DESKeySpec(secretKey.getBytes());  
        //创建一个密钥工厂，用它将DESKeySpec转化成SecretKey对象  
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");  
        SecretKey securekey = keyFactory.generateSecret(desKeySpec);  
        //Cipher对象实际完成加密操作  
        Cipher cipher = Cipher.getInstance("DES");  
        //用密钥初始化Cipher对象  
        cipher.init(Cipher.ENCRYPT_MODE, securekey, sr);
		
		
        // 加密并编码
        return encoder.encodeToString(cipher.doFinal(text.getBytes()));
	}
	
	/**
	 * 解密 
	 */
	public static String decrytor(String enc) throws Exception{
		//DES算法要求有一个可信任的随机数源  
        SecureRandom sr = new SecureRandom();  
        //从原始密钥数据创建DESKeySpec对象  
        DESKeySpec desKeySpec = new DESKeySpec(secretKey.getBytes());  
        //创建一个密钥工厂，用它将DESKeySpec转化成SecretKey对象  
        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("DES");  
        SecretKey securekey = keyFactory.generateSecret(desKeySpec);  
        //Cipher对象实际完成解密操作  
        Cipher cipher = Cipher.getInstance("DES");  
        //用密钥初始化Cipher对象  
        cipher.init(Cipher.DECRYPT_MODE, securekey, sr);  
		
        return new String(cipher.doFinal(decoder.decode(enc)));  
	}
	
	
    //测试
    public static void main(String[] args) throws Exception {  
        String msg ="CiC37iTIV7GLxLGFTk6jbw==";  
        String decontent = decrytor(msg);  
        System.out.println("明文是:" + msg);  
        System.out.println("解密后:" + decontent);  
    }  
  
}