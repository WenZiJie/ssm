package com.bdqa;

import java.io.ByteArrayInputStream;
import java.util.List;
import java.util.Properties;

import org.apache.zookeeper.ZooKeeper;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.core.io.Resource;
import org.springframework.lang.Nullable;

public class ZkPropertyPlaceholderConfigurer extends PropertyPlaceholderConfigurer implements InitializingBean{
	
	@Nullable
	private Resource config;
	
	public void setConfig(Resource config) {
		this.config = config;
	}
	
	// 这个方法初始化bean时执行
	@Override
	public void afterPropertiesSet() throws Exception {
		Properties properties = new Properties();
		properties.load(config.getInputStream());
		System.out.println("执行.. 准备读取zk");
		
		// 1. 连接zk
		ZooKeeper zk = new ZooKeeper(properties.getProperty("zk_host"), Integer.valueOf(properties.getProperty("zk_sessionTimeOut")), null);
		
		// 2. 加载指定节点下的所有配置
		String node = properties.getProperty("zk_config");
		
		// 3. 遍历节点
		List<String> cfgs = zk.getChildren(node, false);
		
		// 4. 读取好的配置信息
		Properties prop = new Properties();
		
		for(String c : cfgs) {
			byte[] b = zk.getData(node + "/" + c, null, null);
			
			prop.load(new ByteArrayInputStream(b));
		}
		
		super.setProperties(prop);
	}
	
	public static void main(String[] args) throws Exception {
		new ZkPropertyPlaceholderConfigurer().afterPropertiesSet();
		//Properties prop = new Properties();
		//prop.load(new FileInputStream("D:/workspace8/spring-crud/src/main/resources/jdbc_config.properties"));
		
		//System.out.println(prop);
	}
	
}
