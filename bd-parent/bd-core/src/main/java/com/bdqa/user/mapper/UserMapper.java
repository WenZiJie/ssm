package com.bdqa.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqa.user.domain.User;

public interface UserMapper {
	/**
	 * 查询用户
	 * @param user
	 * @return
	 */
     public List<User> queryAll();
	
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
     public int add(User user);
     
     /**
      * 根据用户名密码查询用户
      * @param user
      * @return
      */
     public User loginUser(@Param("userName") String userName, @Param("passWord") String passWord);
     
     
     /**
      * 根据用户名查询用户
      * @param userName
      * @return
      */
     public User queryUserByName(String userName);
     
     
     /**
      * 更新用户上次访问时间及ip
      * @param lastLoginIp
      * @param lastLoginTime
      * @param userId
      * @return
      */
    public int updateUserAction (@Param("lastLoginIp")String lastLoginIp,@Param("lastLoginTime")String lastLoginTime,@Param("userId")Integer userId);

    /**
     * 用户激活
     * @param lastLoginIp
     * @return
     */
   public int updateUserState (@Param("userId")int id);
   
   /**
    * 用户密码修改
    * @param lastLoginIp
    * @return
    */
  public int updateUserPassword (User user);

  /**
   * 根据ID删除用户
   * @param lastLoginIp
   * @return
   */
  public void deleteById(@Param("userId")int id);
   
}
