package com.project.shopping.dao;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.shopping.beans.UserBean;
import com.project.shopping.mapper.UserMapper;

@Repository
public class UserDao {
	
	@Autowired
	private UserMapper userMapper;
	
	public String checkUserIdExist(String user_id) {
		return userMapper.checkUserIdExist(user_id);
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userMapper.addUserInfo(joinUserBean);
	}
	
	public UserBean getLoginUserInfo(UserBean temporaryLoginUserBean) {
		return userMapper.getLoginUserInfo(temporaryLoginUserBean);
	}
	
	public UserBean getModifyUserInfo(int user_idx) {
		return userMapper.getModifyUserInfo(user_idx);
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		userMapper.modifyUserInfo(modifyUserBean);
	}
	
	public void deleteUserInfo(int user_idx) {
		userMapper.deleteUserInfo(user_idx);
	}
	
	public void updateUserTempPw(HashMap<String, String> map) {
		userMapper.updateUserTempPw(map);
	}
}
