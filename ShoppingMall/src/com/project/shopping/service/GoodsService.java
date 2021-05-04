package com.project.shopping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.dao.GoodsDao;

@Service
public class GoodsService {

	@Autowired
	private GoodsDao goodsDao;
	
	public String getBoardInfoName(int goods_category_idx) {
		return goodsDao.getBoardInfoName(goods_category_idx);
	}
	
}
