package com.project.shopping.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.GoodsSizeBean;

public interface GoodsMapper {
	
	//main page 인기상품 (3개)
	@Select("SELECT * FROM (SELECT GOODS_IDX AS GOODS_IDX,GOODS_FILE AS GOODS_FILE, " +
			"GOODS_NAME AS GOODS_NAME, GOODS_PRICE AS GOODS_PRICE " +
			"FROM GOODS " +  
			"ORDER BY GOODS_SELL DESC) " +
            "WHERE ROWNUM < 4")
	List<HashMap<Object,Object>> getMainGoodsBestList();
	
	//main page 신상품 (3개)
	
	@Select("SELECT * FROM (SELECT GOODS_IDX AS GOODS_IDX,GOODS_FILE AS GOODS_FILE, " + 
			"GOODS_NAME AS GOODS_NAME, GOODS_PRICE AS GOODS_PRICE " +
			"FROM GOODS " +  
			"ORDER BY GOODS_DATE DESC) " +
            "WHERE ROWNUM < 4")
	List<HashMap<Object,Object>> getMainGoodsNeweList();
	
	
	@Select("SELECT GOODS_CATEGORY_NAME " +
			"FROM GOODS_CATEGORY " +
			"WHERE GOODS_CATEGORY_IDX = #{goods_category_idx}")
	String getBoardInfoName(int goods_category_idx);
	
	//전체글 갯수
	@Select("SELECT COUNT(*) " +
			"FROM GOODS " +
			"WHERE GOODS_CATEGORY_IDX = #{goods_category_idx}")
	int getGoodsCnt(int goods_category_idx);
	
	//상품정보 얻어오기(기본)
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_CATEGORY_IDX = #{goods_category_idx} " +
			"ORDER BY GOODS_IDX ASC")
	List<GoodsBean> getGoodsList(int goods_category_idx,RowBounds rowBounds);
	
	//상품정보 얻어오기(인기순)
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_CATEGORY_IDX = #{goods_category_idx} " +
			"ORDER BY GOODS_SELL DESC ")
	List<GoodsBean> getPopuGoodsList(int goods_category_idx,RowBounds rowBounds);
	
	//상품정보 얻어오기(날짜순)
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_CATEGORY_IDX = #{goods_category_idx} " +
			"ORDER BY GOODS_DATE DESC ")
	List<GoodsBean> getNeweGoodsList(int goods_category_idx,RowBounds rowBounds);
	
	//상품정보 얻어오기(가격순)
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_CATEGORY_IDX = #{goods_category_idx} " +
			"ORDER BY GOODS_PRICE DESC ")
	List<GoodsBean> getPriceGoodsList(int goods_category_idx,RowBounds rowBounds);
	
	//상품 정보 
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_CONTENT,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_IDX = #{goods_idx}")
	GoodsBean getGoodsInfo(int goods_idx);
	
	@Select("SELECT GOODS_SIZE_NAME,GOODS_SIZE_LENGTH,GOODS_SIZE_SHOULDER, " +
			"GOODS_SIZE_CHEST,GOODS_SIZE_SLEEVE,GOODS_SIZE_STOCK " +
			"FROM GOODS_SIZE " +
			"WHERE GOODS_IDX = #{goods_idx} " +
			"ORDER BY GOODS_SIZE_NUM ASC")
	List<GoodsSizeBean> getGoodsSizeList(int goods_idx);
	
	//위시리스트에 담겨 있는 상품정보 뽑아가기
	@Select("SELECT GOODS_IDX " + 
			"FROM WISHLIST " +
			"WHERE USER_IDX = #{userIdx}")
	List<Integer> getGoodsInWishList(int userIdx);
	
	//사이즈 재고 뽑아오는 쿼리
	@Select("SELECT GOODS_SIZE_STOCK " +
			"FROM GOODS_SIZE " +
			"WHERE GOODS_IDX = #{goodsIdx} " +
			"AND GOODS_SIZE_NAME = #{goodsSizeName}")
	int getGoodsStock(@Param("goodsIdx") int goodsIdx,@Param("goodsSizeName") String goodsSizeName);
	
	//상품 검색 기능 관련 쿼리
	//전체글 갯수
	@Select("SELECT COUNT(*) " +
			"FROM GOODS " +
			"WHERE GOODS_NAME like '%'||#{search}||'%' ")
	int getSearchGoodsCnt(String search);
	
	//상품정보 얻어오기(기본)
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_NAME like '%'||#{search}||'%' " +
			"ORDER BY GOODS_IDX ASC")
	List<GoodsBean> getSearchGoodsList(String search,RowBounds rowBounds);
	
	//상품정보 얻어오기(인기순)
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_NAME like '%' ||#{search}|| '%' " +
			"ORDER BY GOODS_SELL DESC ")
	List<GoodsBean> getSearchPopuGoodsList(String search,RowBounds rowBounds);
	
	//상품정보 얻어오기(날짜순)
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_NAME like '%'||#{search}||'%' " +
			"ORDER BY GOODS_DATE DESC ")
	List<GoodsBean> getSearchNeweGoodsList(String search,RowBounds rowBounds);
	
	//상품정보 얻어오기(가격순)
	@Select("SELECT GOODS_IDX,GOODS_NAME,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_NAME like '%'|| #{search} '||%' " +
			"ORDER BY GOODS_PRICE DESC ")
	List<GoodsBean> getSearchPriceGoodsList(String search,RowBounds rowBounds);
	
	
}
