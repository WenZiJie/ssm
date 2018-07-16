package com.bdqa.comment.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqa.comment.domain.Comment;

public interface CommentMapper {
	
	/**
	 *添加评论
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
      public List<Comment> queryCommByReplyId(@Param("replyId")Integer replyId,@Param("startIndex")Integer startIndex,@Param("pageSize")Integer pageSize);
}
