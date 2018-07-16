package com.bdqa.tag.service.impl;

import java.io.IOException;
import java.rmi.RemoteException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.dubbo.config.annotation.Service;

import com.bdqa.question.domain.Question;
import com.bdqa.tag.domain.Tag;
import com.bdqa.tag.mapper.TagMapper;
import com.bdqa.tag.service.TagService;
@Service()
public class TagServiceImpl implements TagService{
    
	public TagServiceImpl() throws RemoteException {
		super();
	}

	@Autowired
	private TagMapper tagMapper;

	@Override
	public List<Tag> queryTagByPath(String tagPath){
		 List<Tag> tagLisst = tagMapper.queryTagByPath(tagPath);
			return tagLisst;
	}



	@Override
	public Tag queryTagById(Integer tagId){
		Tag tag = tagMapper.queryTagById(tagId);
		return tag;
	}

	/**
	 * 根据标签名精确查找
	 * @param name
	 * @return
	 */
	public List<Tag> queryByTagName(String tagName){
		return tagMapper.queryByTagName(tagName);
	}
	
	/**
	 * 新增提问处理
	 * @param question
	 * @param file
	 * @return
	 * @throws IOException
	 */
	public int addQuestion(Question question) {
		return tagMapper.addQuestion(question);
		}
}
