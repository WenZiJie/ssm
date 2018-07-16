package Test;

import java.util.List;

import org.apache.zookeeper.CreateMode;
import org.apache.zookeeper.WatchedEvent;
import org.apache.zookeeper.Watcher;
import org.apache.zookeeper.Watcher.Event.EventType;
import org.apache.zookeeper.ZooDefs.Ids;
import org.apache.zookeeper.ZooKeeper;
import org.apache.zookeeper.data.Stat;

public class Zklock {
	// 公共配置 : zookeeper主机
	private final static String HOST = "192.168.1.12:3181";
	// 公共配置: 锁的目录
	private final static String ROOT = "/locks";
	// 创建锁对象的名字
	private String lockName;
	// 创建的临时节点名字
	private String eName;
	// zk 客户端对象
	private ZooKeeper zk;

	public Zklock(String lockName) throws Exception {
		this.lockName = lockName;
		zk = new ZooKeeper(HOST, 10000, new NodeDelWatcher());
		// 如果不存在ROOT节点则创建一个(永久节点)
		if (zk.exists(ROOT, false) == null) {
			zk.create(ROOT, null, Ids.OPEN_ACL_UNSAFE, CreateMode.PERSISTENT);
		}
	}

	// 获取锁 (此方法若增加一个获取超时时间更好)
	public boolean lock() throws Exception {
		// 第一步： 创建临时有序节点 ， 并返回一个新的节点名字
		eName = zk.create(ROOT + "/" + lockName, null, Ids.OPEN_ACL_UNSAFE, CreateMode.EPHEMERAL_SEQUENTIAL);
		System.out.println("成功创建临时节点： " + eName);
		while (true) {
			// 第二步： 获取子节点
			List<String> subNodes = zk.getChildren(ROOT, false);
			System.out.println("所有节点： " + subNodes);

			// 第三步： 筛选出同名的锁，先排序，再返回第一个节点
			String firstNodeName = subNodes.stream().filter(s -> s.startsWith(lockName)).sorted().findFirst().get();
			
			System.out.println("当前节点："+eName+"       "+"最小节点"+firstNodeName);
			if (firstNodeName == null) {
				// 被非法删除;
				return false;
			}

			// 第四步：判断是否是最小节点， 如果是则执行
			System.out.println("当前进程节点： " + eName + " 第一个节点:" + firstNodeName);
			if (eName.equals(ROOT + "/" + firstNodeName)) {
				return true;
			}
			
			// 如果不是第一个节点，则监视第一个节点;
			Stat stat = zk.exists(ROOT + "/" + firstNodeName, true);
			
			// 如果最小节点不存在，有可能已经被删除，这里重新执行2,3,4步骤
			if (stat == null) {
				continue;
			}
			
			// 当前线程等待 ， 等待其它进程释放锁
			synchronized (lockName) {
				System.out.println(eName + "等待锁");
				lockName.wait(20000); // 最多等20秒，防止第一个节点被删除又没有监控到
			}
		}
	}

	// 释放锁
	public void unlock() throws Exception {
		System.out.println(eName + "释放锁 ");
		zk.delete(eName, -1);
	}

	// 一个观察者对象，用于观察节点删除事件
	private class NodeDelWatcher implements Watcher {
		@Override
		public void process(WatchedEvent event) {
			// 不为删除事件则退出
			if (event.getType() != EventType.NodeDeleted) {
				return;
			}
			// 通知挂起的线程恢复执行
			synchronized (lockName) {
				System.out.println(lockName + " 接受到有进程释放锁,唤醒等待的线程");
				lockName.notifyAll();
			}
		}
	}
}
