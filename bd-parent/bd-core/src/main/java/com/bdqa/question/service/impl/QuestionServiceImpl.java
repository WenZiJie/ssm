package com.bdqa.question.service.impl;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.dubbo.config.annotation.Service;

import com.bdqa.question.domain.Question;
import com.bdqa.question.mapper.QuestionMapper;
import com.bdqa.question.service.QuestionService;
@Service()
public class QuestionServiceImpl implements QuestionService {
	
    public QuestionServiceImpl(){
		super();
	}


	@Autowired 
	private QuestionMapper questionMapper;

    
	@Override
	public List<Question> queryAll(String type,String title,Integer startIndex, Integer pageSize){
		List<Question>  questionList = questionMapper.queryAll(type,title,startIndex, pageSize);
		return questionList;
	}

 
	@Override
	public Question queryQuestionReplyById(String questionId, Integer startIndex, Integer pageSize){
		Question question =	questionMapper.queryQuestionReplyById(Integer.parseInt(questionId), startIndex, pageSize);
		return question;
	}


	@Override
	public int updateQuestionVisitsById(@Param("id")Integer id,@Param("visits")Integer visits){
		int result = questionMapper.updateQuestionVisitsById(id,visits);
		return result;
	}

	@Override
	public int add(Question question) {
		int result = questionMapper.add(question);
		return result;
	}


	@Override
	public int addQuestion(Question question) {
		return questionMapper.addQuestion(question);
	}




	
}
