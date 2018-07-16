package com.bdqa.comment.service;

import java.util.List;

import com.bdqa.comment.domain.Comment;

public interface CommentService{
	/**
	 * 添加评论
	 * @param comment
	 * @return
	 */
	 public int add(Comment comment);
	 
	 
	 /**
      * 根据回答id  查询这个回答下所有的的评论
      * @param replyId
      * @param startIndex
      * @param pageSize
      * @return
      */
     public List<Comment> queryCommByReplyId(Integer replyId,Integer startIndex,Integer pageSize);
}
