package com.project.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.beans.OrdersBean;
import com.project.shopping.dao.OrdersDao;

@Service
public class OrdersService {

	@Autowired
	private OrdersDao ordersDao;
	
	public void addOrdersInfo(OrdersBean ordersBean) {
		ordersDao.addOrdersInfo(ordersBean);
	}
	
	public void updateGoodsSell(int quantity,int goodsIdx) {
		System.out.println("service:"+quantity);
		ordersDao.updateGoodsSell(quantity, goodsIdx);
	}
	
	public List<HashMap<Object, Object>> getOrdersList(int userIdx){
		return ordersDao.getOrdersList(userIdx);
	}
	
	public HashMap<Object,Object> getOrderDetail(int ordersIdx){
		return ordersDao.getOrderDetail(ordersIdx);
	}
	
	public void updateGoodsStock(int goodsIdx,int quantity) {
		ordersDao.updateGoodsStock(goodsIdx, quantity);
	}
}
