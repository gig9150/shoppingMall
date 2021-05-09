package com.project.shopping.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.project.shopping.beans.UserBean;

@Mapper
public interface UserMapper {
	
	// ID 중복확인 쿼리  
	@Select("SELECT USER_NAME " +
			"from USER_INFO " +
			"WHERE USER_ID = #{user_id}")
	String checkUserIdExist(String user_id);
	
	// 회원가입
	@Insert("INSERT INTO USER_INFO(USER_IDX,USER_NAME,USER_ID,USER_EMAIL,USER_PW) " +
			"VALUES(USER_SEQ.NEXTVAL,#{user_name},#{user_id},#{user_email},#{user_pw})")
	void addUserInfo(UserBean joinUserBean);
	
	//로그인 정보 저장
		@Select("SELECT USER_IDX,USER_NAME,USER_ID,USER_EMAIL,USER_PW " +
				"FROM USER_INFO " +
				"WHERE USER_ID = #{user_id} " +
				"AND USER_PW = #{user_pw}")
	UserBean getLoginUserInfo(UserBean temporaryLoginUserBean);
	
	@Select("SELECT USER_NAME,USER_ID,USER_EMAIL " +
			"FROM USER_INFO " +
			"WHERE USER_IDX=#{user_idx}")
	UserBean getModifyUserInfo(int user_idx);
	
	@Update("UPDATE USER_INFO " +
			"SET USER_PW = #{user_pw},USER_EMAIL = #{user_email} " +
			"WHERE USER_IDX = #{user_idx}")
	void modifyUserInfo(UserBean modifyUserBean);
	
	@Delete("DELETE FROM USER_INFO " +
			"WHERE USER_IDX = #{user_idx}")
	void deleteUserInfo(int user_idx);
	
	@Update("UPDATE USER_INFO " +
			"SET USER_PW = #{temporaryPw} " +
			"WHERE USER_ID = #{user_id}")
	void updateUserTempPw(HashMap<String, String> map);
}
