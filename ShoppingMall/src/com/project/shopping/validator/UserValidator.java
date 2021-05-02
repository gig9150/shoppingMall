package com.project.shopping.validator;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.executable.ExecutableValidator;
import javax.validation.metadata.BeanDescriptor;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.project.shopping.beans.UserBean;

public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		UserBean userBean = (UserBean)target;
		String beanName = errors.getObjectName();
		
		//비밀번호가 서로 같은지 확인
		if(beanName.equals("joinUserBean") || beanName.equals("modifyUserBean")) {
			
			if(!userBean.getUser_pw().equals(userBean.getUser_pw2())) {
				errors.rejectValue("user_pw", "NotEquals");
				errors.rejectValue("user_pw2", "NotEquals");
			}
		}
		
		//아이디 중복체크를 했는지 확인
		if(beanName.equals("joinUserBean")) {
			
			if(!userBean.isUserIdExist()) {
				errors.rejectValue("user_id", "DontCheckIdExist");
			}
		}
	}

	
	
	
}
