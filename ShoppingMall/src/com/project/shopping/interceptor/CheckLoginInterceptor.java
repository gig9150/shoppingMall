package com.project.shopping.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.project.shopping.beans.UserBean;

public class CheckLoginInterceptor implements HandlerInterceptor {
	
	private UserBean loginUserBean;
	
	public CheckLoginInterceptor(UserBean loginUserBean) {
		this.loginUserBean = loginUserBean;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		
		//로그인 정보가 없다면 로그인페이지로 이동
		if(loginUserBean.isUserLogin() == false) {
			response.sendRedirect(request.getContextPath() + "/user/not_login");
			session.removeAttribute("userId");
			return false;
		}
		
		return true;
	}
}
