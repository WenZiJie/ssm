package com.bdqa.tag.mapper;

import java.util.List;

import com.bdqa.question.domain.Question;
import com.bdqa.tag.domain.Tag;

public interface TagMapper {
    
	/**
	 * 根据模糊查询的路径表达式查询 标签
	 * @return
	 */
	public List<Tag> queryTagByPath(String tagPath);
	
	/**
	 * 根据模糊查询的路径表达式查询 标签
	 * @return
	 */
	public Tag queryTagById(Integer tagId);
	
	/**
	 * 根据标签名精确查找
	 * @param name
	 * @return
	 */
	public List<Tag> queryByTagName(String tagName);

	public int addQuestion(Question question);
}
