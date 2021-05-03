package com.project.shopping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.beans.GoodsCategoryBean;
import com.project.shopping.dao.TopMenuDao;

@Service
public class TopMenuService {

	@Autowired
	private TopMenuDao topMenuDao;
	
	public List<GoodsCategoryBean> getTopMenuList(){
		return topMenuDao.getTopMenuList();
	}
	
}
