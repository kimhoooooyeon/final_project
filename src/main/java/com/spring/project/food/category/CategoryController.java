package com.spring.project.food.category;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.project.food.review.ReviewDTO;
import com.spring.project.food.review.ReviewService;
import com.spring.project.food.shop.ShopDTO;
import com.spring.project.food.shop.menu.MenuDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CategoryController {
	
	@Autowired CateService cateService;
	@Autowired ReviewService reviewService;
	private static final Logger logger = LoggerFactory.getLogger(CategoryController.class);
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	// 음식점 목록보여주는 페이지
	   @RequestMapping(value ="/shoplist")
	   public String test(Model model,String name,String category_num,String locationinfosave) {
	   
	   // 입력받은 값에따라서 상점 목록보여주기
	   // 전체일경우 넘오는값이 없으니 null값이 나옴
	   // 값을 101로 지정해서 101경우 mapper에서 
	   // WHERE 절을 안쓰기위해서 값설정
	   if (category_num == null) {
	      category_num = "101";
	   }
	      
	   ArrayList<ShopDTO> list = cateService.list(category_num);
	   ArrayList<ReviewDTO> reList = reviewService.reList();
	   ArrayList<ReviewDTO> valueList = reviewService.valueList();
	   
	   
	   model.addAttribute("valueList", valueList);
	   model.addAttribute("reList", reList);
	   model.addAttribute("list", list);
	   model.addAttribute("name", name);
	      return "order/category/test";
	   }
	
	@RequestMapping(value = "/order")
	public String order(Model model, ShopDTO shop,String shop_name) {
		String shop_id = shop.getShop_id();
		ArrayList<MenuDTO> mList = cateService.selectShop(shop_id);
		ArrayList<CategoryDTO> cateList = cateService.selectCate(shop_id);
	
		for(MenuDTO r : mList ) {
			System.out.println(r);
		}
		
		model.addAttribute("cateList", cateList);
		model.addAttribute("mList", mList);
		model.addAttribute("shop_id", shop_id);
		model.addAttribute("shop_name", shop_name);
		return "order/order";
	}
	

	

	
}
