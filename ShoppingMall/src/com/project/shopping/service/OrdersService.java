package com.project.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	
	public void updateGoodsStock(int goodsIdx,int quantity,String goodsSizeName) {
		ordersDao.updateGoodsStock(goodsIdx, quantity,goodsSizeName);
	}
	
	public void deleteOrders(@Param("ordersIdx") int ordersIdx) {
		ordersDao.deleteOrders(ordersIdx);
	}
	
	public void subUpdateGoodsSell(int quantity_idx,int goodsIdx) {
		ordersDao.subUpdateGoodsSell(quantity_idx, goodsIdx);
	}
	
	public String getOrdersSize(int ordersIdx) {
		return ordersDao.getOrdersSize(ordersIdx);
	}
	
	public void subUpdateGoodsStock(int quantity,int goodsIdx,String goodsSizeName) {
		ordersDao.subUpdateGoodsStock(quantity, goodsIdx, goodsSizeName);
	}
}
