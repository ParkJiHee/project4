package com.teamproject3.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.teamproject3.service.CenterService;
import com.teamproject3.vo.CenterVo;

@Controller
//@RequestMapping(value = "/account/")
public class CenterController {
	//로그인
		@Autowired
		@Qualifier("centerService")//서비스의 의존성 주입
		private CenterService centerService;

		@RequestMapping(value= {"/", "/login.action"}, method=RequestMethod.GET)
		public String showLoginForm() {
			return "account/login";//-> /WEB-INF/views/account/login.jsp
		}
		
		@RequestMapping(value="/login.action", method=RequestMethod.POST)
		public String login(CenterVo center, HttpSession session) {
			CenterVo center2 = centerService.findMemberByIdAndPasswd(center);
			
			if (center2 != null) { //로그인 가능한 사용자라면 (DB에 사용자 정보가 존재한다면)				
				//로그인 처리 (세션과 같은 상태 유지 객체에 로그인 데이터 저장)
				session.setAttribute("loginuser", center2); // Session에 데이터 저장
				
				//2. 이동 (forward : to .jsp, redirect : to servlet)
				return "redirect:/home.action";
				
			} else { //로그인 실패								
				return "account/login";
			}
		}
		
		//회원가입
		/////////////////////////////////////////////////////////////////////////////////////
		@RequestMapping(value="/signup.action", method=RequestMethod.GET)
		public String showRegisterForm(@ModelAttribute("center")CenterVo center,
				HttpSession session, HttpServletRequest req) {
			
			center = (CenterVo)session.getAttribute("loginuser");
			if (center == null) {
				session.setAttribute("loginuser", center);
				return "redirect:/login.action";
			}
			
			return "account/signup";
		}
		
		@RequestMapping(value="/signup.action", method=RequestMethod.POST)
		public String register(@Valid@ModelAttribute("center")CenterVo center, BindingResult br) {
			
			if(br.hasErrors()) {
				return "account/signup";
			}
			
			else {
				//1. 데이터 처리 (데이터베이스에 데이터 저장 - Service 객체를 사용해서 처리)
				centerService.registerMember(center);
				//2. 이동 (forward : to .jsp, redirect : to servlet)
				return "redirect:/home.action";
			}
		}
		
		//로그아웃
		////////////////////////////////////////////////////////////////////////////////////////
		@RequestMapping(value="/logout.action", method=RequestMethod.GET)
		public String logOut(HttpSession session) {
			session.removeAttribute("loginuser");
			return "redirect:/login.action";
		}
}
