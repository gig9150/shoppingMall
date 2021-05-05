package com.project.shopping.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.stereotype.Service;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.PageBean;
import com.project.shopping.dao.GoodsDao;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class GoodsService {
	
	@Value("${page.listCut}")
	private int listCnt;
	
	@Value("${page.paginationCnt}")
	private int paginationCnt;

	@Autowired
	private GoodsDao goodsDao;
	
	public String getBoardInfoName(int goods_category_idx) {
		return goodsDao.getBoardInfoName(goods_category_idx);
	}
	
	public PageBean getGoodsCnt(int goods_category_idx,int page) {
		int goodsCnt = goodsDao.getGoodsCnt(goods_category_idx);
		PageBean pageBean = new PageBean(page,goodsCnt,listCnt,paginationCnt);
		return pageBean;
		
	}
	//상품정보 가져오기
	public List<GoodsBean> getGoodsList(int goods_category_idx,int page,int guiest_id1){
		int start = (page - 1) * listCnt;
		RowBounds rowBounds = new RowBounds(start,listCnt);
		//정렬 기준에따라 다르게뽑기 (0:기본 / 1:인기순 / 2:날짜순 / 3.가격순)
		if(guiest_id1 == 0) {
			return goodsDao.getGoodsList(goods_category_idx, rowBounds);
		}else if(guiest_id1 == 1) {
			
		}else if(guiest_id1 == 2) {
			
		}else {
			
		}
	}
	
	
}
