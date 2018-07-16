package com.bdqa.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.bdqa.question.domain.Question;
import com.bdqa.question.service.QuestionService;
import com.bdqa.user.domain.User;
import com.bdqa.user.service.UserService;
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Reference
	private UserService userService;
	
	@Reference
	private QuestionService questionService;

	@RequestMapping("/user")
	@ResponseBody
	public Map<String,Object> index() throws Exception{
		List<User> list =  userService.queryAll();
		for (User user : list) {
			System.out.println(user);
		}
		Map<String,Object> map = new HashMap<>();
		map.put("code", 0);
		map.put("msg", "查询成功");
		map.put("count", list.size());
		map.put("data", list);
		return map;
	}
	
	@RequestMapping("/delAdmin")
	@ResponseBody
	public void delAdmin(@RequestParam int id) throws Exception{
		userService.deleteById(id);
	}
	
	@RequestMapping("/question")
	@ResponseBody
	public Map<String,Object> question(@RequestParam int page,@RequestParam int limit) throws Exception{
		List<Question> list =  questionService.queryAll("default", null, (page-1)*limit, limit);
		Map<String,Object> map = new HashMap<>();
		map.put("code", 0);
		map.put("msg", "查询成功");
		map.put("count", 50);
		map.put("data", list);
		return map;
	}
	
	@RequestMapping("/upload")
	@ResponseBody
	public void question(@RequestParam String filePath) throws Exception{
		System.out.println("接收到参数："+filePath);
	}
}
