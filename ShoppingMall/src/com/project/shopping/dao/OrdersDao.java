package com.project.shopping.dao;

import java.util.HashMap;
import java.util.List;

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
		ordersMapper.updateGoodsSell(quantity, goodsIdx);
	}
	
	public List<HashMap<Object, Object>> getOrdersList(int userIdx){
		return ordersMapper.getOrdersList(userIdx);
	}
}
