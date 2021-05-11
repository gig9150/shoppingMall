package com.project.shopping.dao;

import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.shopping.beans.OrdersBean;
import com.project.shopping.mapper.OrdersMapper;

@Repository
public class OrdersDao {

	@Autowired
	private OrdersMapper ordersMapper;
	
	public void addOrdersInfo(OrdersBean ordersBean) {
		ordersMapper.addOrdersInfo(ordersBean);
	}
	
	public void updateGoodsSell(int quantity,int goodsIdx) {
		System.out.println("dao:"+quantity);
		ordersMapper.updateGoodsSell(quantity, goodsIdx);
	}
}
