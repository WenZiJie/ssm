package com.bdqa.web.vo;

import com.bdqa.question.domain.Question;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class QuestionVo{
    
	private Question question;//问题
	private Integer replyCount;//问题回答数
	
	
}
