package com.project.shopping.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.project.shopping.beans.OrdersBean;

public interface OrdersMapper {

	@Insert("INSERT INTO ORDERS " +
			"VALUES(ORDERS_SEQ.NEXTVAL,1,#{userIdx},#{goodsIdx},#{ordersPhone},#{ordersAddress}," +
			"#{ordersQuantity},sysdate,#{ordersSize},'0')")
	void addOrdersInfo(OrdersBean ordersBean);
	
	@Update("UPDATE GOODS " +
			"SET GOODS_SELL = GOODS_SELL + #{quantity} " +
			"WHERE GOODS_IDX = #{goodsIdx}")
	void updateGoodsSell(@Param("quantity")int quantity,@Param("goodsIdx")int goodsIdx);
	
	//주문목록에 필요한 데이터 뽑아가기
	@Select("SELECT S.ORDERS_STATUS_NAME,G.GOODS_PRICE,O.ORDERS_REVIEW, " +
			"O.ORDERS_IDX,O.ORDERS_QUANTITY,TO_CHAR(O.ORDERS_DATE,'YYYY/MM/DD') AS ORDERS_DATE " +
			"FROM ORDERS O,GOODS G, ORDERS_STATUS S " +
			"WHERE O.GOODS_IDX = G.GOODS_IDX " +
			"AND O.ORDERS_STATUS_IDX = S.ORDERS_STATUS_IDX " +
			"AND O.USER_IDX = #{userIdx} " +
			"ORDER BY O.ORDERS_DATE")
	List<HashMap<Object, Object>> getOrdersList(int userIdx);
	
	// 주문 내역 상세
	@Select("SELECT O.ORDERS_ADDRESS,O.ORDERS_PHONE,TO_CHAR(O.ORDERS_DATE,'YYYY/MM/DD') AS ORDERS_DATE," + 
			"O.ORDERS_SIZE,O.ORDERS_QUANTITY,O.ORDERS_STATUS_IDX,G.GOODS_IDX,G.GOODS_NAME,G.GOODS_FILE,G.GOODS_PRICE " + 
			"FROM ORDERS O,GOODS G " + 
			"WHERE O.GOODS_IDX = G.GOODS_IDX " + 
			"AND O.ORDERS_IDX = #{ordersIdx}")
	HashMap<Object,Object> getOrderDetail(int ordersIdx);
	
	//재고수량 변경
	@Update("update GOODS_SIZE " +
			"set GOODS_SIZE_STOCK = GOODS_SIZE_STOCK - #{quantity} " +
			"where goods_idx = #{goodsIdx} " +
			"AND GOODS_SIZE_NAME = #{goodsSizeName}")
	void updateGoodsStock(@Param("quantity")int quantity,
							@Param("goodsIdx")int goodsIdx,
							@Param("goodsSizeName")String goodsSizeName); 
	
	//주문취소 하기 
	@Delete("DELETE FROM ORDERS " +
			"WHERE ORDERS_IDX = #{ordersIdx}")
	void deleteOrders(@Param("ordersIdx") int ordersIdx);
	
	//주문 취소 판매량 수정
	@Update("UPDATE GOODS " +
			"SET GOODS_SELL = GOODS_SELL + #{quantity} " +
			"WHERE GOODS_IDX = #{goodsIdx}")
	void subUpdateGoodsSell(@Param("quantity") int quantity,@Param("goodsIdx")int goodsIdx);
	
	//주문 취소 재고수량 수정
	@Select("SELECT ORDERS_SIZE " +
			"FROM ORDERS " +
			"WHERE ORDERS_IDX = #{ordersIdx}")
	String getOrdersSize(@Param("ordersIdx") int ordersIdx);
	
	@Update("UPDATE GOODS_SIZE " +
			"SET GOODS_SIZE_STOCK = GOODS_SIZE_STOCK - #{quantity} " +
			"WHERE GOODS_IDX = #{goodsIdx} " +
			"AND GOODS_SIZE_NAME = #{goodsSizeName,jdbcType = VARCHAR}")
	void subUpdateGoodsStock(@Param("quantity")int quantity,
							@Param("goodsIdx")int goodsIdx,
							@Param("goodsSizeName")String goodsSizeName);
	
	
}
