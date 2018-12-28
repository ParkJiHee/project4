package com.teamproject3.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.teamproject3.service.ProductService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.ProductVo;



@Controller
@RequestMapping(value = "/product/")
public class ProductController {
	//로그인
		@Autowired
		@Qualifier("productService")//서비스의 의존성 주입
		private ProductService productService;

		// 헤더에서 클릭하면 취미리스트 페이지로 가는 컨트롤러
		@RequestMapping(value = "/productList.action", method = RequestMethod.GET)
		public String productlist(Model model) {
			
			List<ProductVo> products = productService.findAllProduct();
			
			model.addAttribute("products", products);
			
			return "product/productList";
		}
		
		// 게시글을 등록하는 페이지로 가는 컨트롤러
		@RequestMapping(value = "/productRegister.action", method= RequestMethod.GET)
		public String productregisterForm(HttpSession session, HttpServletRequest req, CenterVo center) {
			
			center = (CenterVo)session.getAttribute("loginuser");
			if (center == null) {
				session.setAttribute("loginuser", center);
				return "redirect:/login.action";
			}
			
			return "product/productRegister";
		}
		
		// 등록한 내용 제출하는 컨트롤러
		@RequestMapping(value = "/productRegister.action", method= RequestMethod.POST)
		public String productregister(ProductVo product, HttpServletRequest req, CenterVo center) {
			
			productService.writeProduct(product);
			
			return "redirect:productList.action";
		}
		
		// 게시글의 디테일 페이지로 가는 컨트롤러
		@RequestMapping(value = "/productUpdate.action", method= RequestMethod.GET)
		public String productupdate(
				@RequestParam("productno")int productNo, Model model) {
			
			ProductVo product = productService.findProductByProductNo(productNo);
			if (product == null) {
				return "redirect:productList.action";
			}
			
			model.addAttribute("product", product);
			model.addAttribute("productno", productNo);
			
			return "product/productUpdate";
		}
		
		// 글수정 메서드
		@RequestMapping(value = "/productUpdate.action", method = RequestMethod.POST) 
		public String updatepost(ProductVo product, Model model) {

			productService.updateProduct(product);

			return "redirect:productList.action";
		}

		// 글삭제 메서드
		@RequestMapping(value = "/productDelete.action", method = RequestMethod.GET)
		public String deleteproduct(@RequestParam("productno") int productNo, Model model) {

			productService.deleteProduct(productNo);

			return "redirect:productList.action";
		}
}
