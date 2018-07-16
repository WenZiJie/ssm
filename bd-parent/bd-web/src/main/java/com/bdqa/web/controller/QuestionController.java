package com.bdqa.web.controller;

import java.io.IOException;
import java.rmi.RemoteException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.solr.client.solrj.SolrServerException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.bdqa.question.domain.Question;
import com.bdqa.question.service.QuestionService;
import com.bdqa.user.domain.User;

@Controller
@RequestMapping("/question")
public class QuestionController {
	
	@Reference
	private QuestionService questionService;

	@RequestMapping("/toadd")
	public String toSubmitQuestion() { 
		return "question";
	}
	
	/**
	 * 新增提问处理
	 * @param question
	 * @param file
	 * @return
	 * @throws RemoteException 
	 * @throws IOException
	 */
	@RequestMapping("/addQuestion")
	@ResponseBody
	public String addQuestion(Question question) throws RemoteException {	
		question.setContent(question.getContent().replace("<", "&lt;"));
		question.setContent(question.getContent().replace(">", "&gt;"));
		question.setTitle(question.getTitle().replace("<", "&lt;"));
		question.setTitle(question.getTitle().replace(">", "&gt;"));
		int i = questionService.addQuestion(question);
		if (i>0) {
			return "{\"result\":\"success\"}";
		}
		return "{\"result\":\"error\"}";
	}
	
	/**
	 *查询所有问题
	 *
	 * @param title  问题标题
	 * @param currentPageNo  当前页码
	 * @param pageSize    页面大小
	 * @return
	 * @throws IOException 
	 * @throws SolrServerException 
	 */
	@RequestMapping(value="/",produces="application/json; charset=UTF-8")
	@ResponseBody
	public Map<String, Object> queryAllQuestion(String title,Integer currentPageNo,Integer pageSize,String type) throws SolrServerException, IOException{
		Map<String, Object> map =new HashMap<>();
		
		//分页查询问题
		List<Question> questionList = questionService.queryAll(type, title, 0, 33);

		//保存到map
		map.put("questionList", questionList);
		
		//以json的方式返回数据 到  问题显示页面
		return map;
	}
	
	/**
	 * 根据问题id,查询问题及问题下的所有答案
	 * 
	 * @param qid  问题id
	 * @param currentPageNo  当前页码
	 * @param pageSize 页码大小
	 * @param model
	 * @return
	 * @throws RemoteException 
	 * @throws NumberFormatException 
	 */
	@GetMapping("/{questionId}")
	public String queryQuestionReplyByQId(@PathVariable("questionId")Integer qid,Integer currentPageNo,Integer pageSize,Model model) throws NumberFormatException, RemoteException {
		
		Question  question = questionService.queryQuestionReplyById(qid.toString(), 0, 5);
		questionService.updateQuestionVisitsById(Integer.parseInt(question.getId()), (question.getVisits()+1));
		model.addAttribute("question", question);
		
		return "question-details";
	}
	@GetMapping("/weixin/{questionId}")
	@ResponseBody
	public Question weixinqueryQuestionReplyByQId(@PathVariable("questionId")Integer qid,Integer currentPageNo,Integer pageSize,Model model) throws NumberFormatException, RemoteException {
		Question  question = questionService.queryQuestionReplyById(qid.toString(), 0, 5);
		questionService.updateQuestionVisitsById(Integer.parseInt(question.getId()), (question.getVisits()+1));
		model.addAttribute("question", question);
		return question;
	}
	
	@RequestMapping("/add")
	@ResponseBody
	public Map<String, Object> addQuestion(Question question,HttpSession session) throws RemoteException {
	
    Map<String, Object> map =new HashMap<>();
    
	User user =(User) session.getAttribute("userSession");
		
	if(user==null) {
		map.put("result", "no-login");
		return map;
	}
	
	question.setPlugImg("");
	question.setSubmitterId(user.getId().toString());
	question.setSubmitterName(user.getUserName());
	question.setSubmitterTime(new Timestamp(System.currentTimeMillis()));
	
	int result = questionService.add(question);
	
	System.out.println("该问题的id====="+question.getId());
	
	if(result<0) {
		map.put("result", "false");
		return map;
	}
	
	map.put("result", "true");
	map.put("questionId", question.getId());
	return map;
	}
}
