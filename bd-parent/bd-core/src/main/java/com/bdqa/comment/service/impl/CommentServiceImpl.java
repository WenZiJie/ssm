package com.bdqa.comment.service.impl;

import java.rmi.RemoteException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.dubbo.config.annotation.Service;
import com.bdqa.comment.domain.Comment;
import com.bdqa.comment.mapper.CommentMapper;
import com.bdqa.comment.service.CommentService;
@Service()
public class CommentServiceImpl implements CommentService {
   
	protected CommentServiceImpl() throws RemoteException {
		super();
	}

	@Autowired
	public CommentMapper commentMapper;

	@Override
	public int add(Comment comment)  {
		int result = commentMapper.add(comment);
		return result;
	}

	@Override
	public List<Comment> queryCommByReplyId(Integer replyId, Integer startIndex, Integer pageSize) {
		List<Comment>  commentList = commentMapper.queryCommByReplyId(replyId, startIndex, pageSize);
		return commentList;
	}
}
