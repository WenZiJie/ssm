package com.bdqa.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.dubbo.config.annotation.Service;

import com.bdqa.user.domain.User;
import com.bdqa.user.mapper.UserMapper;
import com.bdqa.user.service.UserService;
@Service()
public class UserServiceImpl implements UserService {
    
	protected UserServiceImpl(){
		super();
	}

	@Autowired
	public UserMapper userMapper;

	public List<User> queryAll(){
 		return userMapper.queryAll();
 	}
	
	@Override
	public int add(User user){
		int result = userMapper.add(user);
		return result;
	}

	@Override
	public User loginUser(String userName,String passWord){
		User user = userMapper.loginUser(userName,passWord);
		return user;
	}

	@Override
	public User queryUserByName(String userName) {
		return  userMapper.queryUserByName(userName);
	}

	@Override
	public int updateUserAction(String lastLoginIp, String lastLoginTime, Integer userId) {
			int result = userMapper.updateUserAction(lastLoginIp, lastLoginTime, userId);
	 	return result;
	}

	@Override
	public int updateUserState(int id) {
		int result = userMapper.updateUserState(id);
	 	return result;
	}

	@Override
	public int updateUserPassword(User user) {
		int result = userMapper.updateUserPassword(user);
	 	return result;
	}

	@Override
	public void deleteById(int id) {
		userMapper.deleteById(id);
	}
	
	
	
}
