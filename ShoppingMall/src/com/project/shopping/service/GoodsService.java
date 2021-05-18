package com.project.shopping.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.stereotype.Service;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.GoodsSizeBean;
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
			return goodsDao.getPopuGoodsList(goods_category_idx, rowBounds);
		}else if(guiest_id1 == 2) {
			return goodsDao.getNeweGoodsList(goods_category_idx, rowBounds);
		}else {
			return goodsDao.getPriceGoodsList(goods_category_idx, rowBounds);
		}
	}
	
	//검색해서 상품정보 가져오기 
	
	
	public GoodsBean getGoodsInfo(int goods_idx) {
		return goodsDao.getGoodsInfo(goods_idx);
	}
	
	public List<GoodsSizeBean> getGoodsSizeList(int goods_idx){
		return goodsDao.getGoodsSizeList(goods_idx);
	}
	
	public List<Integer> getGoodsInWishList(int userIdx) {
		return goodsDao.getGoodsInWishList(userIdx);
	}
	
	public int getGoodsStock(int goodsIdx,String goodsSizeName) {
		return goodsDao.getGoodsStock(goodsIdx, goodsSizeName);
	}
	
	public List<HashMap<Object,Object>> getMainGoodsBestList(){
		return goodsDao.getMainGoodsBestList();
	}
	
	public List<HashMap<Object,Object>> getMainGoodsNeweList(){
		return goodsDao.getMainGoodsBestList();
	}
	
	//검색 관련 메소드
	//전체글 갯수
	public PageBean getSearchGoodsCnt(String search,int page) {
		int goodsCnt = goodsDao.getSearchGoodsCnt(search);
		PageBean pageBean = new PageBean(page,goodsCnt,listCnt,paginationCnt);
		return pageBean;		
	}
	
	//글 갯수 자체를 리턴
	public int getSearchCnt(String search) {
		return goodsDao.getSearchGoodsCnt(search);
	}
	
	//상품정보 가져오기
	public List<GoodsBean> getSearchGoodsList(String search,int page,int guiest_id1){
		int start = (page - 1) * listCnt;
		RowBounds rowBounds = new RowBounds(start,listCnt);
		//정렬 기준에따라 다르게뽑기 (0:기본 / 1:인기순 / 2:날짜순 / 3.가격순)
		if(guiest_id1 == 0) {
			return goodsDao.getSearchGoodsList(search, rowBounds);
		}else if(guiest_id1 == 1) {
			return goodsDao.getSearchPopuGoodsList(search, rowBounds);
		}else if(guiest_id1 == 2) {
			return goodsDao.getSearchNeweGoodsList(search, rowBounds);
		}else {
			return goodsDao.getSearchPriceGoodsList(search, rowBounds);
		}
	}
	
	
	
}
