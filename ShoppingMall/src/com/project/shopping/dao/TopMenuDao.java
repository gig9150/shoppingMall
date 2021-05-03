package com.project.shopping.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.shopping.beans.GoodsCategoryBean;
import com.project.shopping.mapper.TopMenuMapper;

@Repository
public class TopMenuDao {

	@Autowired
	private TopMenuMapper topMenuMapper;
	
	public List<GoodsCategoryBean> getTopMenuList(){
		return topMenuMapper.getTopMenuList();
	}
	
}
