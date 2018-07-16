package com.bdqa.web.controller;

import java.rmi.RemoteException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.dubbo.config.annotation.Reference;
import com.bdqa.tag.domain.Tag;
import com.bdqa.tag.service.TagService;

@Controller
@RequestMapping("/tag")
public class TagController {
	
	@Reference
   private TagService tagService;
   
   /**
    * 
    * @param tagPath  父节点路径
    * @param model
    * @return
 * @throws RemoteException 
    */
   @RequestMapping("/list")
   public String queryTagByExpr(String tagPath,Model model) throws RemoteException { 
	   List<Tag> tagList =null;
	   Tag tag=null;
	   String path =null;
	   Integer tagId=null;
	   
	   //截取和拆分路径 /1/2/3   变成  a[0] =1  arr[1]=2  arr[2]=3
	   String [] arr = tagPath.substring(tagPath.indexOf("/")+1).split("/");

	   //如果是查询二级标签的子标签--三级标签
	   if(arr.length==2) {
		   path="/"+arr[0]+"/"+arr[1]+"/";
		   tagId =Integer.valueOf(arr[1]);
		 
		//如果是查询一级标签的子标签--二级标签
	   }else if (arr.length==1) {
		   path = "/"+arr[0]+"/";
		   tagId = Integer.valueOf(arr[0]);
	   }

	  //查询数据
	  tag = tagService.queryTagById(tagId);
	  tagList = tagService.queryTagByPath(path);
	 
	  //保存到model中
	  model.addAttribute("tagList",tagList);
	  model.addAttribute("currentTag",tag);
	  return "index";
   }
   @GetMapping("/tags")
	@ResponseBody
	public List<Tag> queryTag(@RequestParam String tag) throws RemoteException{
		List<Tag> list = tagService.queryByTagName(tag);
		return list;
	}
}
