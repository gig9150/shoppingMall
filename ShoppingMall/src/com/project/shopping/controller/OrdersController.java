package com.project.shopping.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.OrdersBean;
import com.project.shopping.beans.OrdersUserBean;
import com.project.shopping.beans.UserBean;
import com.project.shopping.service.OrdersService;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	private OrdersService ordersService;

	@GetMapping("/checkout-one")
	public String checkoutOne(@RequestParam("totalPrice") int totalPrice,
								Model model){
		//상품 가격 토탈
		model.addAttribute("totalPrice",totalPrice);
		//회원정보
		model.addAttribute("loginUserBean",loginUserBean); 
		return "orders/checkout-one";
	}
	
	@PostMapping("/checkout-two")
	public String checkoutTwo(@ModelAttribute OrdersUserBean ordersUserBean){
		return "orders/checkout-two";
	}
	
	@GetMapping("/checkout-three")
	public String checkoutdThree(@ModelAttribute OrdersUserBean ordersUserBean){
		System.out.println(ordersUserBean.getUserName());
		return "orders/checkout-three";
	}
	
	@GetMapping("/checkout-four")
	public String checkoutFour(@RequestParam String userAddress,
								@RequestParam String userPhone,
								HttpSession session){
		List<GoodsBean> list = (List)session.getAttribute("cartList");
		//db에 주문목록 저장
		for(GoodsBean bean : list) {
			if(bean.getUser_id().equals(loginUserBean.getUser_id())) {
				OrdersBean ordersBean = new OrdersBean();
				ordersBean.setUserIdx(loginUserBean.getUser_idx());
				ordersBean.setGoodsIdx(bean.getGoods_idx());
				ordersBean.setOrdersAddress(userAddress);
				ordersBean.setOrdersPhone(userPhone);
				ordersBean.setOrdersQuantity(bean.getGoods_quantity());
				ordersService.addOrdersInfo(ordersBean);
				// 상품이 판매될때마다 판매량 집계하기위해 수량 추가
				System.out.println("quantity:"+bean.getGoods_quantity());
				System.out.println("goods_idx:"+bean.getGoods_quantity());
				ordersService.updateGoodsSell(bean.getGoods_quantity(), bean.getGoods_idx());
			}
		}
		
		return "orders/checkout-four";
	}
}
