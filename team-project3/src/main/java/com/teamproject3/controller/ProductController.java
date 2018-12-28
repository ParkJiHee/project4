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
		public String pregisterForm(HttpSession session, HttpServletRequest req, CenterVo center) {
			
			center = (CenterVo)session.getAttribute("loginuser");
			if (center == null) {
				session.setAttribute("loginuser", center);
				return "redirect:/login.action";
			}
			
			return "product/productRegister";
		}
		
		// 등록한 내용 제출하는 컨트롤러
		@RequestMapping(value = "/productRegister.action", method= RequestMethod.POST)
		public String write(ProductVo product, HttpServletRequest req, CenterVo center) {
			
			productService.writeProduct(product);
			
			return "redirect:productList.action";
		}
		
//		// 게시글의 디테일 페이지로 가는 컨트롤러
//		@RequestMapping(value = "/hobbydetail.action", method= RequestMethod.GET)
//		public String hdetail(
//				@RequestParam("hobbyno")int hobbyNo,
//				@RequestParam("pageno")int pageNo,
//				Model model) {
//			
//			HobbyVo hobby = hobbyService.findHobbyByHobbyNo(hobbyNo);
//			if (hobby == null) {
//				return "redirect:list.action";
//			}
//			
//			//조회수 증가 처리
//			hobbyService.increaseHobbyReadCount(hobbyNo);
//			hobby.setH_readCount(hobby.getH_readCount() + 1);
//			
//			model.addAttribute("hobby", hobby);
//			model.addAttribute("hobbyno", hobbyNo);
//			model.addAttribute("pageno", pageNo);
//			
//			return "hobby/hobbydetail";
//		}
		
//		// 글수정 메서드
//		@RequestMapping(value = "/hobbyupdate.action", method = RequestMethod.GET)
//		public String updateHobby(@RequestParam(value = "hobbyno", required = false) Integer hobbyNo,
//				@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageNo, Model model) {
//
//			HobbyVo hobby = hobbyService.findHobbyByHobbyNo(hobbyNo);
//
//			model.addAttribute("hobby", hobby);
//			model.addAttribute("pageno", pageNo);
//
//			return "hobby/hobbyupdate";
//		}
//		
//		// 글수정 메서드
//		@RequestMapping(value = "/hobbyupdate.action", method = RequestMethod.POST) 
//		public String updatepost(@RequestParam(value = "hobbyno", required = false) Integer hobbyNo,
//				@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageNo,
//				@ModelAttribute("hobby") HobbyVo hobby, BindingResult br, Model model) {
//
//			hobby.setHobbyNo(hobbyNo);
//			hobbyService.updateHobby(hobby);
//
//			return String.format("redirect:hobbydetail.action?hobbyno=%s&pageno=%s", hobbyNo, pageNo);
//		}
//
//		// 글삭제 메서드
//		@RequestMapping(value = "/hobbydelete.action", method = RequestMethod.GET)
//		public String deleteHobby(@RequestParam(value = "hobbyno", required = false) Integer hobbyNo,
//				@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageNo, Model model) {
//
//			hobbyService.deleteHobby(hobbyNo);
//
//			return ("redirect:list.action?pageno=" + pageNo);
//		}
}
