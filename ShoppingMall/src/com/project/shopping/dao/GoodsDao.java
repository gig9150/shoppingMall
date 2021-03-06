package com.project.shopping.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.GoodsSizeBean;
import com.project.shopping.mapper.GoodsMapper;

@Repository
public class GoodsDao {

	@Autowired
	private GoodsMapper goodsMapper;
	
	public String getBoardInfoName(int goods_category_idx) {
		return goodsMapper.getBoardInfoName(goods_category_idx);
	}
	
	//페이징을 위한 전체 글 갯수 
	public int getGoodsCnt(int goods_category_idx) {
		return goodsMapper.getGoodsCnt(goods_category_idx);
	}
	
	//메인페이지 상품정보 얻어오기 
	public List<GoodsBean> getGoodsList(int goods_category_idx,RowBounds rowBounds){
		return goodsMapper.getGoodsList(goods_category_idx, rowBounds);
	}
	
	//메인페이지 상품정보(인기순)
	public List<GoodsBean> getPopuGoodsList(int goods_category_idx,RowBounds rowBounds){
		return goodsMapper.getPopuGoodsList(goods_category_idx, rowBounds);
	}
	
	//메인페이지 상품정보(날짜순)
	public List<GoodsBean> getNeweGoodsList(int goods_category_idx,RowBounds rowBounds){
		return goodsMapper.getNeweGoodsList(goods_category_idx, rowBounds);
	}
	
	//메인페이지 상품정보(가격순)
	public List<GoodsBean> getPriceGoodsList(int goods_category_idx,RowBounds rowBounds){
		return goodsMapper.getPriceGoodsList(goods_category_idx, rowBounds);
	}
	
	//상품정보 디테일페이지
	public GoodsBean getGoodsInfo(int goods_idx) {
		return goodsMapper.getGoodsInfo(goods_idx);
	}
	
	//상품에 대한 사이즈정도
	public List<GoodsSizeBean> getGoodsSizeList(int goods_idx){
		return goodsMapper.getGoodsSizeList(goods_idx);
	}
	
	public List<Integer> getGoodsInWishList(int userIdx) {
		return goodsMapper.getGoodsInWishList(userIdx);
	}
	
	public int getGoodsStock(int goodsIdx,String goodsSizeName) {
		return goodsMapper.getGoodsStock(goodsIdx, goodsSizeName);
	}
	
	public List<HashMap<Object,Object>> getMainGoodsBestList(){
		return goodsMapper.getMainGoodsBestList();
	}
	
	public List<HashMap<Object,Object>> getMainGoodsNeweList(){
		return goodsMapper.getMainGoodsNeweList();
	}
	
	//페이징을 위한 전체 글 갯수 
	public int getSearchGoodsCnt(String search) {
		return goodsMapper.getSearchGoodsCnt(search);
	}
	
	//메인페이지 상품정보 얻어오기 
	public List<GoodsBean> getSearchGoodsList(String search,RowBounds rowBounds){
		return goodsMapper.getSearchGoodsList(search, rowBounds);
	}
	
	//메인페이지 상품정보(인기순)
	public List<GoodsBean> getSearchPopuGoodsList(String search,RowBounds rowBounds){
		return goodsMapper.getSearchPopuGoodsList(search, rowBounds);
	}
	
	//메인페이지 상품정보(날짜순)
	public List<GoodsBean> getSearchNeweGoodsList(String search,RowBounds rowBounds){
		return goodsMapper.getSearchNeweGoodsList(search, rowBounds);
	}
	
	//메인페이지 상품정보(가격순)
	public List<GoodsBean> getSearchPriceGoodsList(String search,RowBounds rowBounds){
		return goodsMapper.getSearchPriceGoodsList(search, rowBounds);
	}
	
}
