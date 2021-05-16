package com.project.shopping.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.UserBean;
import com.project.shopping.service.AccountService;
import com.project.shopping.service.GoodsService;
import com.project.shopping.service.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private AccountService accountService;
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	private boolean checkCartGoodsExist = false;
	
	@GetMapping("/user/checkUserIdExist/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
		
		//문자열로 변환하여 전달
		return userService.checkuserIdExist(user_id) + "";
	}
	
	@GetMapping("/account/goodsAddCart/{goods_idx}/{guiest_id3}/{quantity}")
	public String goodsAddCart(@PathVariable int goods_idx,
								@PathVariable String guiest_id3,
								@PathVariable String quantity,
								HttpSession session,
								Model model) {
		//guiest_id3 : 사이즈 qunatity : 수량
		int intQuantity = Integer.parseInt(quantity);
		GoodsBean goodsBean = goodsService.getGoodsInfo(goods_idx);
		goodsBean.setGoods_size(guiest_id3);
		goodsBean.setGoods_quantity(intQuantity);
		goodsBean.setUser_id(loginUserBean.getUser_id());
		
		List<GoodsBean> list = (List)session.getAttribute("cartList");
		//List가 null일 경우
		if(list == null) {
			list = new ArrayList<GoodsBean>();
		}
		
		//장바구니에 동일한 상품이 존재하면 갯수만 늘리기
		if(list != null) {
			for(GoodsBean bean : list) {
				if(bean.getUser_id().equals(goodsBean.getUser_id()) 
						&& bean.getGoods_idx() == goodsBean.getGoods_idx()
						&& bean.getGoods_size().equals(goodsBean.getGoods_size())) {
					bean.setGoods_quantity(bean.getGoods_quantity() + goodsBean.getGoods_quantity());
					checkCartGoodsExist = true;
					break;
				}
			}
		}
		//동일한 상품이 존재하지 않으면 빈 추가해주기
		if(checkCartGoodsExist == false) {
			list.add(goodsBean);
		}else {
			checkCartGoodsExist = false;
		}
		
		session.setAttribute("cartList", list);
		
		return "true";
	}
	
	// 카트에있는 값 지우기 
	@GetMapping("/account/goodsDeleteCart/{goods_idx}/{goods_size}")
	public String goodsDeleteCart(@PathVariable String goods_idx,
									@PathVariable String goods_size,
									HttpSession session) {
		
		String userId = (String)session.getAttribute("userId");
		List<GoodsBean> list = (List)session.getAttribute("cartList");
		
		for(GoodsBean bean : list) {
			if(bean.getUser_id().equals(userId) 
					&& bean.getGoods_idx() == Integer.parseInt(goods_idx)
					&& bean.getGoods_size().equals(goods_size)) {
				list.remove(bean);
				break;
			}
		}
		
		return "ture";
	}
	
	//장바구니에서 상품 수량을 변경했을때의 처리 
	@GetMapping("/account/cartQuantity/{goods_idx}/{quantity}/{goods_size}/{up_down}")
	public String cartQuantity(@PathVariable int goods_idx,
								@PathVariable int quantity,
								@PathVariable String goods_size,
								@PathVariable String up_down,
								HttpSession session) {
		
		String userId = (String)session.getAttribute("userId");
		List<GoodsBean> list = (List)session.getAttribute("cartList");
		
		for(GoodsBean bean : list) {
			if(bean.getUser_id().equals(userId) 
					&& bean.getGoods_idx() == goods_idx
					&& bean.getGoods_size().equals(goods_size)) {
				if(up_down.equals("up")) {
					bean.setGoods_quantity(quantity);
				}else {
					bean.setGoods_quantity(quantity);
				}
			}
		}
		
		return "d";
	}
	
	//위시리스트 추가 
	@GetMapping("/account/addWishlist/{goods_idx}")
	public String addWishlist(@PathVariable int goods_idx) {
		accountService.addWishlist(loginUserBean.getUser_idx(),goods_idx);
		return "true";
	}
	
	//위시리스트 삭제
	@GetMapping("/account/deleteWishlist/{wishlist_idx}")
	public String deleteWishlist(@PathVariable int wishlist_idx) {
		accountService.deleteWishlist(wishlist_idx);
		return "true";
	}
	
	
}
