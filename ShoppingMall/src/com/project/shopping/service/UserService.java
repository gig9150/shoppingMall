package com.project.shopping.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.beans.UserBean;
import com.project.shopping.dao.UserDao;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	public boolean checkuserIdExist(String user_id) {
		
		//아이디가 존재하는지 , 이메일 형식인가를 체크 
		if(userDao.checkUserIdExist(user_id) == null) {
			return true;
		}else {
			return false;
		}
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
	
	public void getLoginUserInfo(UserBean temporaryLoginUserBean) {
		UserBean temporaryLoginUserBean2 = userDao.getLoginUserInfo(temporaryLoginUserBean);

		//담아온 정보를 로그인 정보를 관리하는 loginUserBean에 담기
		if(temporaryLoginUserBean2 != null) {
			loginUserBean.setUser_idx(temporaryLoginUserBean2.getUser_idx());
			loginUserBean.setUser_name(temporaryLoginUserBean2.getUser_name());
			loginUserBean.setUser_id(temporaryLoginUserBean2.getUser_id());
			loginUserBean.setUser_email(temporaryLoginUserBean2.getUser_email());
			loginUserBean.setUser_pw(temporaryLoginUserBean2.getUser_pw());
			loginUserBean.setUserLogin(true);
		}
		
	}
	
	public void getModifyUserInfo(UserBean modifyUserBean) {
		
		UserBean tempModifyUserBean = userDao.getModifyUserInfo(loginUserBean.getUser_idx());
		
		modifyUserBean.setUser_idx(loginUserBean.getUser_idx());
		modifyUserBean.setUser_name(tempModifyUserBean.getUser_name());
		modifyUserBean.setUser_id(tempModifyUserBean.getUser_id());
		modifyUserBean.setUser_email(tempModifyUserBean.getUser_email());
		
	}
	
	public void modifyUserInfo(UserBean modifyUserBean) {
		userDao.modifyUserInfo(modifyUserBean);
	}
	
	public void deleteUserInfo(int user_idx) {
		userDao.deleteUserInfo(user_idx);
	}
	
	//유저 정보를 임시 비밀번호로 변경
	public void updateUserTempPw(HashMap<String, String> map) {
		userDao.updateUserTempPw(map);
	}
	
}
