package com.bdqa;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.apache.zookeeper.CreateMode;
import org.apache.zookeeper.ZooDefs.Ids;
import org.apache.zookeeper.ZooKeeper;
import org.tmatesoft.svn.core.SVNDirEntry;
import org.tmatesoft.svn.core.SVNNodeKind;
import org.tmatesoft.svn.core.SVNURL;
import org.tmatesoft.svn.core.auth.ISVNAuthenticationManager;
import org.tmatesoft.svn.core.io.SVNRepository;
import org.tmatesoft.svn.core.io.SVNRepositoryFactory;
import org.tmatesoft.svn.core.wc.SVNWCUtil;

public class Jdbc {
	public static void main(String[] args) throws Exception {
		Map<String, String> fileMap = readConfig("http://john-pc:10020/svn/c2/wenzijie");
		ZooKeeper zk = new ZooKeeper("localhost:2181/BaiDuQA", 10000, null);
		// 设置节点数据
		for (String key : fileMap.keySet()) {
		zk.create("/"+key, fileMap.get(key).getBytes(),Ids.OPEN_ACL_UNSAFE, CreateMode.EPHEMERAL);
		}
		synchronized (zk) {
			zk.wait();
		}
	}

	public static Map readConfig(String url) throws Exception {
		Map<String, String> fileMap = new HashMap<>();
		ZooKeeper zk = new ZooKeeper("localhost:2181", 10000, null);
		String name = "c2.wenzijie";
		String password = "sd123456";
		// 定义svn版本库的URL。
		SVNURL repositoryURL = SVNURL.parseURIEncoded(url);
		// 定义版本库。
		SVNRepository repository = SVNRepositoryFactory.create(repositoryURL);
		/*
		 * 对版本库设置认证信息。
		 */
		ISVNAuthenticationManager authManager = SVNWCUtil.createDefaultAuthenticationManager(name,
				password.toCharArray());
		repository.setAuthenticationManager(authManager);
		// 遍历目录
		Collection<SVNDirEntry> entries = repository.getDir("config", -1, null,(Collection) null);
		for (SVNDirEntry entry : entries) {
			// 跳过目录
			if (entry.getKind() == SVNNodeKind.DIR) {
				continue;
			}
			// 读取文件内容
			OutputStream outputStream = new ByteArrayOutputStream();
			repository.getFile("config" + "/" + entry.getRelativePath(), -1, null,
					outputStream);
			fileMap.put(entry.getRelativePath(), outputStream.toString());
		}
		return fileMap;
	}
}
