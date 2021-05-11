package com.project.shopping.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

import com.project.shopping.beans.OrdersBean;

public interface OrdersMapper {

	@Insert("INSERT INTO ORDERS " +
			"VALUES(ORDERS_SEQ.NEXTVAL,1,#{userIdx},#{goodsIdx},#{ordersPhone},#{ordersAddress}," +
			"#{ordersQuantity},sysdate)")
	void addOrdersInfo(OrdersBean ordersBean);
	
	@Update("UPDATE GOODS " +
			"SET GOODS_SELL = GOODS_SELL + #{quantity} " +
			"WHERE GOODS_IDX = #{goodsIdx}")
	void updateGoodsSell(@Param("quantity")int quantity,@Param("goodsIdx")int goodsIdx);

}
