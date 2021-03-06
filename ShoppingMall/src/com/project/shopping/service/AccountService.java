package com.project.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.shopping.dao.AccountDao;

@Service
public class AccountService {
	
	@Autowired
	private AccountDao accountDao;
	
	public void addWishlist(int userIdx,int goodsIdx) {
		accountDao.addWishlist(userIdx, goodsIdx);
	}
	
	public List<HashMap<Object,Object>> getWishlist(int userIdx){
		return accountDao.getWishlist(userIdx);
	}
	
	public void deleteWishlist(int userIdx,int goodsIdx) {
		accountDao.deleteWishlist(userIdx, goodsIdx);
	}
	
	public void addReivew(HashMap<Object,Object> map) {
		accountDao.addReivew(map);
	}
	
	public List<HashMap<Object, Object>> getReviewList(int goodsIdx){
		return accountDao.getReviewList(goodsIdx);
	}
	
	public void updateOrdersReview(int ordersIdx) {
		accountDao.updateOrdersReview(ordersIdx);
	}

}
