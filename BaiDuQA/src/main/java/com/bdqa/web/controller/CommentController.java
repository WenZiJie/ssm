package com.bdqa.web.controller;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bdqa.comment.domain.Comment;
import com.bdqa.comment.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {
	
	@Autowired
	private CommentService commentService;
       
	/**
	 * 对问题的回答 进行回复
	 * @param comment
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addComment(Comment comment) {
		//添加评论时间时间
		comment.setCommentTime(new Timestamp(System.currentTimeMillis()));
		
		//提交数据库
		int result = commentService.add(comment);
		
		//判断时候添加成功
		if(result>0) {
			return "{\"result\":\"true\"}";
		}else {
			return "{\"result\":\"false\"}";	
		}
	}
	
	
	/**
	 * 分页显示该回答下的所有评论
	 */
	@GetMapping("/{replyId}")
	@ResponseBody
	public Map<String, Object> queryCommByReplyId(@PathVariable("replyId") Integer replyId,Integer startIndex,Integer pageSize) {
		Map<String, Object>  map =new HashMap<>();
		
		//根据回答id分页查询该回答的所有评论
		List<Comment> commentList = commentService.queryCommByReplyId(replyId, 0, 5);
		
		//如果没有评论
		if(commentList.size()==0) {
			map.put("result", "false");
			return map;
		}
		
		//如果有评论
		map.put("result", "true");
		map.put("commentList", commentList);
		return map;
	}
}
