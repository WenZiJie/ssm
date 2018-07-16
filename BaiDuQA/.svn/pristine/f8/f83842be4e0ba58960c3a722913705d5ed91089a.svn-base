package Test;

import java.util.Properties;

import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.EncodedResource;
import org.springframework.core.io.support.PropertiesLoaderUtils;

public class ZkPlaceholderConfigurer extends PropertyPlaceholderConfigurer {
	public void setConfig(Resource config) {
		try {
			// 1. zk 配置信息
			Properties props = new Properties();
			PropertiesLoaderUtils.fillProperties(props, new EncodedResource(config));
			// 2. 从zk中读取配置信息
			read(props, props.getProperty("zk_config"));
			// 3. 设置到到prop中
			setProperties(props);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 读取指定目录的内容
	 * 
	 * @throws Exception
	 */
	private void read(Properties props, String config) throws Exception {

		
	}
}
