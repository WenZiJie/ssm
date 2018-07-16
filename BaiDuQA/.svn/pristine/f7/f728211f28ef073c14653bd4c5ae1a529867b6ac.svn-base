package com.bdqa.web.controller;

import java.sql.Date;
import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bdqa.reply.domain.Reply;
import com.bdqa.reply.service.ReplyService;

@Controller
@RequestMapping("/reply")
public class ReplyController {

	@Autowired
	private ReplyService replyService;


	/**
	 * 对问题进行回答
	 * @param reply
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public String addReply(Reply reply) {
		//设置回答时间
		reply.setReplyTime(new Timestamp(System.currentTimeMillis()));

		int result = replyService.add(reply);
  
		if(result>0) {
			return "{\"result\":\"true\"}";
		}else {
			return "{\"result\":\"false\"}";	
		}
	}
}
