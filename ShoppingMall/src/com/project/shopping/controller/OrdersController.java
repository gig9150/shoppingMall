package com.project.shopping.controller;

import java.util.Iterator;
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
	public String checkoutTwoPost(@ModelAttribute OrdersUserBean ordersUserBean){
		return "orders/checkout-two";
	}
	
	@GetMapping("/checkout-two")
	public String checkoutTwoGet(@ModelAttribute OrdersUserBean ordersUserBean) {
		return "orders/checkout-two";
	}
	
	@GetMapping("/checkout-three")
	public String checkoutdThree(@ModelAttribute OrdersUserBean ordersUserBean){
		return "orders/checkout-three";
	}
	
	@GetMapping("/checkout-four")
	public String checkoutFour(@RequestParam String userAddress,
								@RequestParam String userPhone,
								HttpSession session,
								Model model){
		List<GoodsBean> list = (List)session.getAttribute("cartList");
		
		//db에 주문목록 저장 / session에서 장바구니 상품 삭제
		Iterator<GoodsBean> iter = list.iterator();
		while(iter.hasNext()) {
			GoodsBean bean = iter.next();
				if(bean.getUser_id().equals(loginUserBean.getUser_id())) {
					OrdersBean ordersBean = new OrdersBean();
					ordersBean.setUserIdx(loginUserBean.getUser_idx());
					ordersBean.setGoodsIdx(bean.getGoods_idx());
					ordersBean.setOrdersAddress(userAddress);
					ordersBean.setOrdersPhone(userPhone);
					ordersBean.setOrdersQuantity(bean.getGoods_quantity());
					ordersBean.setOrdersSize(bean.getGoods_size());
					ordersService.addOrdersInfo(ordersBean);
					// 상품이 판매될때마다 판매량 집계하기위해 수량 추가
					ordersService.updateGoodsSell(bean.getGoods_quantity(), bean.getGoods_idx());
					// 상품이 판매될때마다 재고 수량 조정
					System.out.println(bean.getGoods_size());
					ordersService.updateGoodsStock(bean.getGoods_quantity(),bean.getGoods_idx(),bean.getGoods_size());
					// 상품이 판매되면 세션에서 상품 지우기 
					iter.remove();
				}
		}
		
		model.addAttribute("userAddress",userAddress);
		
		return "orders/checkout-four";
	}
	
	
	
}
