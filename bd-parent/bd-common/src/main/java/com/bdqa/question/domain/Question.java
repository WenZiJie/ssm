package com.bdqa.question.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


import com.bdqa.reply.domain.Reply;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
/**
 * 问题类
 *    描述:用户发布了问题
 * @author SDJX
 *
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Question implements Serializable {
	
   private String id;//问题id
   private String title;//问题标题
   private String content;//问题内容
   private String plugImg;//问题插图
   private String questionTag;//问题标签
   private Integer visits;//问题浏览次数
   private String submitterId;//提交者id(取自于user——id)
   private String submitterName;//提交者名字
   private Date submitterTime;//提交时间  
   private Date updateTime;//数据更新时间  
   private Integer replyCount;//问题回答数
   private List<Reply> replyList;//问题下面的回答
}
