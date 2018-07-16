package com.bdqa.reply.domain;
import java.io.Serializable;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply implements Serializable {
	private Integer id;//回答id
	private String content;//回答内容
	private String plugImg;//回答插图
	private int like;//点赞数
	private int dislike;//点踩数
	private Integer questionId;//问题id
	private Integer replyerId;//回答者id
	private String replyerName;//回答者名字
	private Timestamp replyTime;//回答时间
	
	
	private int commentCount;//该回答下评论的数量
}
