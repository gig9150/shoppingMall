package com.project.shopping.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
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
	
	public List<HashMap<Object,Object>> getOrdersDetail(int ordersIdx){
		return ordersMapper.getOrdersDetail(ordersIdx);
	}
	
	public void updateGoodsStock(int quantity,int goodsIdx,String goodsSizeName) {
		ordersMapper.updateGoodsStock(quantity,goodsIdx,goodsSizeName);
	}
	
	public void deleteOrders(@Param("ordersIdx") int ordersIdx) {
		ordersMapper.deleteOrders(ordersIdx);
	}
	
	public void subUpdateGoodsSell(int quantity_idx,int goodsIdx) {
		ordersMapper.subUpdateGoodsSell(quantity_idx, goodsIdx);
	}
	
	public String getOrdersSize(int ordersIdx) {
		return ordersMapper.getOrdersSize(ordersIdx);
	}
	
	public void subUpdateGoodsStock(int quantity,int goodsIdx,String goodsSizeName) {
		ordersMapper.subUpdateGoodsStock(quantity, goodsIdx, goodsSizeName);
	}
	
	public HashMap<Object,Object> getReviewDetail(int ordersIdx){
		return ordersMapper.getReviewDetail(ordersIdx);
	}
}
