package com.project.shopping.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface AccountMapper {
	
	//위시리스트 등록하기
	@Insert("INSERT INTO WISHLIST VALUES(WISH_SEQ.NEXTVAL,#{userIdx},#{goodsIdx},sysdate)")
	void addWishlist(@Param("userIdx") int userIdx,@Param("goodsIdx") int goodsIdx) ;
	
	//위시리스트 삭제하기
	@Delete("DELETE FROM WISHLIST " +
			"WHERE USER_IDX=#{userIdx} " +
			"AND GOODS_IDX=#{goodsIdx}")
	void deleteWishlist(@Param("userIdx") int userIdx,@Param("goodsIdx")int goodsIdx);
	
	// 위시리스트 리스트 얻어오기
	@Select("SELECT W.WISHLIST_IDX,TO_CHAR(W.WISHLIST_DATE,'YYYY/MM/DD') AS WISHLIST_DATE,G.GOODS_IDX, " +
			"G.GOODS_NAME,G.GOODS_PRICE,G.GOODS_FILE " +
			"FROM WISHLIST W,GOODS G " +
			"WHERE W.GOODS_IDX = G.GOODS_IDX " +
			"AND W.USER_IDX = #{userIdx}")
	List<HashMap<Object,Object>> getWishlist(int userIdx);
}
