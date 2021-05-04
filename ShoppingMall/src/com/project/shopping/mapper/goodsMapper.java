package com.project.shopping.mapper;

import org.apache.ibatis.annotations.Select;

public interface goodsMapper {

	@Select("SELECT GOODS_CATEGORY_NAME " +
			"FROM GOODS_CATEGORY " +
			"WHERE GOODS_CATEGORY_IDX = #{goods_category_idx}")
	String getBoardInfoName(int goods_category_idx);
}
