package com.bdqa.reply.service;

import com.bdqa.reply.domain.Reply;

public interface ReplyService {
	/**
	 * 添加回答
	 * @param reply
	 * @return
	 */
  public int add(Reply reply);
}
