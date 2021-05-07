package com.project.shopping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.GoodsSizeBean;

public interface goodsMapper {

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
	
	@Select("SELECT GOODS_NAME,GOODS_CONTENT,GOODS_PRICE,GOODS_FILE " +
			"FROM GOODS " +
			"WHERE GOODS_IDX = #{goods_idx}")
	GoodsBean getGoodsInfo(int goods_idx);
	
	@Select("SELECT GOODS_SIZE_NAME,GOODS_SIZE_LENGTH,GOODS_SIZE_SHOULDER, " +
			"GOODS_SIZE_CHEST,GOODS_SIZE_SLEEVE " +
			"FROM GOODS_SIZE " +
			"WHERE GOODS_IDX = #{goods_idx} " +
			"ORDER BY GOODS_SIZE_NUM ASC")
	List<GoodsSizeBean> getGoodsSizeList(int goods_idx);
	
	
}
