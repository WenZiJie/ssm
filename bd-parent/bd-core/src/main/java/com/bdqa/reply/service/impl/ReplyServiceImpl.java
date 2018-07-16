package com.bdqa.reply.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.dubbo.config.annotation.Service;

import com.bdqa.reply.domain.Reply;
import com.bdqa.reply.mapper.ReplyMapper;
import com.bdqa.reply.service.ReplyService;

@Service()
public class ReplyServiceImpl implements ReplyService{
   
	public ReplyServiceImpl(){
		super();
	}

	@Autowired
	private ReplyMapper replyMapper;

	@Override
	public int add(Reply reply){
		int result = replyMapper.add(reply);
		return result;
	}
}
