package com.project.shopping.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.shopping.mapper.goodsMapper;

@Repository
public class GoodsDao {

	@Autowired
	private goodsMapper goodsMapper;
	
	public String getBoardInfoName(int goods_category_idx) {
		return goodsMapper.getBoardInfoName(goods_category_idx);
	}
}
