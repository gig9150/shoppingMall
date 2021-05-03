package com.project.shopping.interceptor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.project.shopping.beans.GoodsCategoryBean;
import com.project.shopping.beans.UserBean;
import com.project.shopping.service.TopMenuService;

public class TopMenuInterceptor implements HandlerInterceptor {
	
	private TopMenuService topMenuService;
	
	public TopMenuInterceptor(TopMenuService topMenuService) {
		this.topMenuService = topMenuService;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		List<GoodsCategoryBean> topMenulist = topMenuService.getTopMenuList();
		
		request.setAttribute("topMenulist" , topMenulist);
		
		
		return true;
		
	}
	
}
