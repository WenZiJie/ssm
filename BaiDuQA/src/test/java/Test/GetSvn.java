package Test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;

import org.apache.zookeeper.KeeperException;
import org.apache.zookeeper.ZooKeeper;
import org.tmatesoft.svn.core.SVNDirEntry;
import org.tmatesoft.svn.core.SVNException;
import org.tmatesoft.svn.core.SVNNodeKind;
import org.tmatesoft.svn.core.SVNURL;
import org.tmatesoft.svn.core.auth.ISVNAuthenticationManager;
import org.tmatesoft.svn.core.io.SVNRepository;
import org.tmatesoft.svn.core.io.SVNRepositoryFactory;
import org.tmatesoft.svn.core.wc.SVNWCUtil;

public class GetSvn {
	public static void main(String[] args) throws SVNException, Exception {
		ZooKeeper zk = new ZooKeeper("localhost:2181", 10000, null);
		String url = "http://john-pc:10020/svn/c2/wenzijie";
		String name = "c2.wenzijie";
		String password = "sd123456";
		//定义svn版本库的URL。
		SVNURL repositoryURL = SVNURL.parseURIEncoded(url);
		//定义版本库。
		SVNRepository repository = SVNRepositoryFactory.create(repositoryURL);
		/*
		* 对版本库设置认证信息。
		*/
		ISVNAuthenticationManager authManager =
		SVNWCUtil.createDefaultAuthenticationManager(name, password.toCharArray());
		repository.setAuthenticationManager(authManager);
		// 遍历目录
		Collection<SVNDirEntry> entries =
		repository.getDir("project/BaiDuQA/src/main/resources/jdbc", -1, null, (Collection)null);
		for(SVNDirEntry entry : entries) {
		// 跳过目录
		if (entry.getKind() == SVNNodeKind.DIR) {
		continue;
		}
		System.out.println("文件: " + entry.getRelativePath());
		// 读取文件内容
		OutputStream outputStream = new ByteArrayOutputStream();
		repository.getFile("project/BaiDuQA/src/main/resources/jdbc" + "/" +
		entry.getRelativePath(), -1, null, outputStream);
		System.out.println(outputStream.toString());
		}
		
		
	}
}
