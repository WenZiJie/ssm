package com.bdqa.question.mapper;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqa.question.domain.Question;

public interface QuestionMapper {
	/**
	 * 分页查询所有问题--按提交时间,回答数量 依次 倒叙查询
	 * 
	 * @param title  根据问题标题模糊查询
	 * @param startIndex  开始下标
	 * @param pageSize   查询数据数
	 * @return
	 */
	public List<Question>  queryAll(@Param("type") String type,@Param("title") String title,@Param("startIndex")Integer startIndex,@Param("pageSize")Integer pageSize);


	/**
	 * 分页查询指定问题id下的所有回答----按照回答时间,及点赞数 倒叙查询
	 * 
	 *@param questionId 问题id
	 * @return
	 */
	public Question queryQuestionReplyById(@Param("questionId")Integer questionId,@Param("startIndex") Integer startIndex,@Param("pageSize")Integer pageSize);


	/**
	 * 添加问题,返回该问题的主键
	 * @param question
	 * @return
	 */
	public int add(Question question);
	
	
	/**
	 * 根据问题ID更新问题访问次数
	 * 
	 *@param id 问题id
	 * @return
	 */
	public int updateQuestionVisitsById(@Param("id")Integer id,@Param("visits")Integer visits);


	/**
	 * 新增提问处理
	 * @param question
	 * @param file
	 * @return
	 * @throws IOException
	 */
	public int addQuestion(Question question);

}
