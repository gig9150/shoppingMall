package com.project.shopping.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.shopping.beans.GoodsBean;
import com.project.shopping.beans.GoodsSizeBean;
import com.project.shopping.beans.PageBean;
import com.project.shopping.beans.UserBean;
import com.project.shopping.service.AccountService;
import com.project.shopping.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	private GoodsService goodsService;
	
	@Autowired
	private AccountService accountService; 

	@GetMapping("/main")
	public String main(@RequestParam("goods_category_idx")int goods_category_idx,
						@RequestParam(value="page",defaultValue = "1")int page,
						@RequestParam(value="guiest_id1",defaultValue = "0")int guiest_id1,
						Model model) {
		
		//카테고리 번호
		model.addAttribute("goods_category_idx",goods_category_idx);
		//카테고리 이름
		String goodsCategoryName = goodsService.getBoardInfoName(goods_category_idx);
		model.addAttribute("goodsCategoryName",goodsCategoryName);
		//상품 목록 뽑아오기
		List<GoodsBean> goodsList = goodsService.getGoodsList(goods_category_idx, page,guiest_id1);
		model.addAttribute("goodsList",goodsList);
		//페이징 처리에 필요한 정보들 얻어오기 (pageBean)
		PageBean pageBean =  goodsService.getGoodsCnt(goods_category_idx, page);
		//위시리스트에 들어있는 상품 정보 뽑아오기
		if(goodsService.getGoodsInWishList(loginUserBean.getUser_idx()) != null) {
			List<Integer> wishGoodsIdx = goodsService.getGoodsInWishList(loginUserBean.getUser_idx());
			model.addAttribute("wishGoodsIdx",wishGoodsIdx);
			
		}
		model.addAttribute("pageBean",pageBean);
		model.addAttribute("page",page);
		model.addAttribute("guiest_id1",guiest_id1);
		
		return "goods/main";
		
	}
	
	@GetMapping("/search")
	public String search(@RequestParam("search")String search,
						@RequestParam(value="page",defaultValue = "1")int page,
						@RequestParam(value="guiest_id1",defaultValue = "0")int guiest_id1,
						Model model) {
		
		
		int searchCnt = goodsService.getSearchCnt(search);
		model.addAttribute("goodsCategoryName", "검색된 결과 : " + searchCnt);
		//상품 목록 뽑아오기
		List<GoodsBean> goodsList = goodsService.getSearchGoodsList(search, page,guiest_id1);
		model.addAttribute("goodsList",goodsList);
		//페이징 처리에 필요한 정보들 얻어오기 (pageBean)
		PageBean pageBean =  goodsService.getSearchGoodsCnt(search, page);
		//위시리스트에 들어있는 상품 정보 뽑아오기
		if(goodsService.getGoodsInWishList(loginUserBean.getUser_idx()) != null) {
			List<Integer> wishGoodsIdx = goodsService.getGoodsInWishList(loginUserBean.getUser_idx());
			model.addAttribute("wishGoodsIdx",wishGoodsIdx);
		}
		model.addAttribute("pageBean",pageBean);
		model.addAttribute("page",page);
		model.addAttribute("guiest_id1",guiest_id1);
		
		return "goods/main";
		
	}
	
	
	
	@GetMapping("/detail")
	public String detail(@RequestParam("goods_idx")int goods_idx,
						@RequestParam(value = "page",defaultValue = "1")int page,
						@RequestParam(value = "goods_category_idx", defaultValue = "1")int goods_category_idx,
						Model model) {
		//상품정보 
		GoodsBean goodsBean = goodsService.getGoodsInfo(goods_idx);
		model.addAttribute("goodsBean",goodsBean);
		//다시 목록으로 돌아올것을 생각해서 필요한 정보 담기 
		model.addAttribute("goods_category_idx",goods_category_idx);
		model.addAttribute("page",page);
		//상품에 대한 사이즈정보
		List<GoodsSizeBean> sizeList = goodsService.getGoodsSizeList(goods_idx);
		model.addAttribute("sizeList",sizeList);
		//상품에 대한 리뷰정보
		List<HashMap<Object,Object>> reviewList = accountService.getReviewList(goods_idx);
		model.addAttribute("reviewList",reviewList);
		
		return "goods/detail";
	}
	
}
