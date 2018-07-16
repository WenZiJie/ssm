package com.bdqa.comment.domain;

import java.io.Serializable;
import java.sql.Timestamp;

import com.bdqa.user.domain.User;
import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 回复评论类
 *   描述:用户对问题下的评论进行了回复
 * @author SDJX
 *
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Comment  implements Serializable{
	private Integer id;//回复id
	private String content;//回复内容
	private Integer replyId;//所属评论id
	private Integer commentBy;//回复者id(取自于 user -----id)
	@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Timestamp commentTime;//回复时间
	
	
	private User user;//对回答进行评论的用户
	private int commentCount;//该评论所属回答下  评论的总数  
}
