package com.project.shopping.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.session.RowBounds;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.GoodsCategoryBean;

@Mapper
public interface TopMenuMapper {

	// top menu 내용 얻어오기
	@Select("select goods_category_idx,goods_category_name " +
			"from goods_category " +
			"order by goods_category_idx asc")
	List<GoodsCategoryBean> getTopMenuList();
	
	
	
}
