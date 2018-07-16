package Test;


import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.zookeeper.CreateMode;
import org.apache.zookeeper.WatchedEvent;
import org.apache.zookeeper.Watcher;
import org.apache.zookeeper.ZooDefs.Ids;
import org.apache.zookeeper.data.Stat;
import org.jboss.netty.handler.codec.compression.ZlibDecoder;
import org.springframework.core.io.Resource;
import org.apache.zookeeper.ZooKeeper;

public class Test {
	public static void main1(String[] args) {
//		FileInputStream fis = new FileInputStream("C:/Users/john/Desktop/新建文本文档.txt");
		ByteArrayInputStream is = new ByteArrayInputStream("abcefg".getBytes());
		int i = 0;
		while( (i = is.read()) != -1) {
			System.out.println(i);
		}
	}
	
	public static void main(String[] args) throws IOException {
		// 字节流， 字符流
		// 输出/输入流
		// 官道流/ 内存流/ 随机读取流
		ByteArrayOutputStream os = new ByteArrayOutputStream();
		
		
//		os.write(97);
//		os.write(98);
//		os.write(99);
//		
//		byte[] b = os.toByteArray();
//		System.out.println(Arrays.toString(b));
//		System.out.println(os.toString());
//		
//		
		FileInputStream fis = new FileInputStream("D:/BugReport.txt");
		int i = 0;
		while( (i = fis.read()) != -1) {
			os.write(i);
		}
		
		System.out.println(os.toString());
		
	}

	public static void main12(String[] args) throws Exception {
		ZooKeeper zk = new ZooKeeper("localhost:2181", 10000, null);
		//创建节点
		//zk.create("/wer/wenzijie", "hellozookeeper".getBytes(),Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
		
		//删除节点
		//zk.delete("/wer", 0);
		
		//设置节点数据
		//zk.setData("/wer/wenzijie", "wenzijie".getBytes(), -1);
		
		//查询节点数据
		Stat stat = new Stat();
		stat.setVersion(1);
		byte [] str = zk.getData("/wer/wenzijie", false, stat);
		String res = new String(str);
		System.out.println(res);
		
		
		//查询节点
		//System.out.println(zk.getChildren("/wer/wenzijie", null));
		
		//Stat stat = zk.exists("/wer/wenzijie", null);
		//System.out.println(stat.getVersion());
		System.out.println("启动成功... ");
		
		// 一次性的
		/**
		 *   a. exists    
		 *   		增加节点 ：NodeCreated， 
		 *   		删除节点：NodeDeleted
		 *		为节点setData：NodeDataChanged
		 *   b. getChildren   
		 *   		为当前的节点 创建子节点或删除子节点 的时候 ： NodeChildrenChanged
		 * 			删除当前节点 ： NodeDeleted
		 *   c. getData   
		 *   		当前节点setData ： NodeDataChanged 
		 *			删除当前节点 ：  NodeDeleted
		 */
		//zk.getChildren("/wer/wenzijie", new TestWatcher(zk));
		
		//设置节点数据
		zk.setData("/wer/wenzijie", "wenzijie".getBytes(), -1);
		synchronized (zk) {
			zk.wait();
		}
		
		
	}
	private static class TestWatcher implements Watcher{
		private ZooKeeper zk;

		public TestWatcher(ZooKeeper zk) {
			this.zk = zk;
		}

		@Override
		public void process(WatchedEvent event) {
			System.out.println("接收到： " +  event.getType());
			try {
				zk.getChildren("/wer/wenzijie", new TestWatcher(zk));
			} catch (Exception e) { 
				
			}
		}
	}
}
