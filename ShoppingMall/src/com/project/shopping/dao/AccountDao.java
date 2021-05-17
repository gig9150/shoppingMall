package com.project.shopping.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.shopping.mapper.AccountMapper;

@Repository
public class AccountDao {
	
	@Autowired
	private AccountMapper accountMapper;
	
	public void addWishlist(int userIdx,int goodsIdx) {
		accountMapper.addWishlist(userIdx, goodsIdx);
	}
	
	public List<HashMap<Object,Object>> getWishlist(int userIdx){
		return accountMapper.getWishlist(userIdx);
	}
	
	public void deleteWishlist(int userIdx,int goodsIdx) {
		accountMapper.deleteWishlist(userIdx, goodsIdx);
	}

}
