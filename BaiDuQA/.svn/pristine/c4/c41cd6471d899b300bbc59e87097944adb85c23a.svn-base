package Test;

public class Client {
	public static void main(String[] args) throws Exception {
		Zklock lock = new Zklock("lock_test");
		// 执行代码
		if (lock.lock()) {
			System.out.println(" 修改开始...");
			Thread.sleep(10 * 1000); // 模拟处理时间为10秒
			System.out.println(" 修改结束...");
			lock.unlock();
		} else {
			System.out.println("获取锁失败");
		}
	}
}
