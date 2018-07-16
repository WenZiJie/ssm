package com.bdqa.question.service;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqa.question.domain.Question;

public interface QuestionService{
	/**
	 * 分页查询所有问题--按提交时间倒叙查询
	 * @param startIndex  开始索引
	 * @param pageSize    查询多少条数据
	 * @return
	 */
	public List<Question>  queryAll(@Param("type") String type,String title,Integer startIndex,Integer pageSize);

	/**
	 * 分页查询指定问题id下的所有回答----按照回答时间,及点赞数 倒叙查询
	 * 
	 *@param questionId 问题id
	 * @return
	 */
	public Question queryQuestionReplyById(String questionId,Integer startIndex,Integer pageSize);

	
	/**
	 * 根据问题ID更新问题访问次数
	 * 
	 *@param id 问题id
	 * @return
	 */
	public int updateQuestionVisitsById(@Param("id")Integer id,@Param("visits")Integer visits);

	/**
	 * 添加问题
	 * @param question
	 * @return
	 */
	public int add(Question question);

	/**
	 * 新增提问处理
	 * @param question
	 * @param file
	 * @return
	 * @throws IOException
	 */
	public int addQuestion(Question question);
}
