package com.teamproject3.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/account/")
public class CenterController {
	//로그인
		/*@Autowired
		@Qualifier("accountService")//서비스의 의존성 주입
		private AccountService accountService;

		//@RequestMapping(value="/account/login.action", method=RequestMethod.GET)
		@RequestMapping(value="/login.action", method=RequestMethod.GET)
		public String showLoginForm() {
			return "account/login";//-> /WEB-INF/views/account/login.jsp
		}
		
		@RequestMapping(value="/login.action", method=RequestMethod.POST)
		public String login(MemberVo member, HttpSession session) {
			MemberVo member2 = accountService.findMemberByIdAndPasswd(member);
			
			if (member2 != null) { //로그인 가능한 사용자라면 (DB에 사용자 정보가 존재한다면)				
				//로그인 처리 (세션과 같은 상태 유지 객체에 로그인 데이터 저장)
				session.setAttribute("loginuser", member2); // Session에 데이터 저장
				
				//2. 이동 (forward : to .jsp, redirect : to servlet)
				return "redirect:/home.action";
				
			} else { //로그인 실패								
				return "account/login";
			}
		}*/
}
