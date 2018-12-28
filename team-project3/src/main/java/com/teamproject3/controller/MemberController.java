package com.teamproject3.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamproject3.service.MemberService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.MemberVo;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	@Qualifier("memberService")//서비스의 의존성 주입
	private MemberService memberService;
	
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String home(Locale locale, Model model,
			HttpSession session, HttpServletRequest req, CenterVo center) {
		
		center = (CenterVo)session.getAttribute("loginuser");
		if (center == null) {
			session.setAttribute("loginuser", center);
			return "redirect:/login.action";
		}
		
		return "member/memberlist";
	}
	
	// 댓글 메서드
	@RequestMapping(value = "/memberSignin.action", method = RequestMethod.POST)
	@ResponseBody
	public String memberSignin(MemberVo member) {

		

		return "success";
	}
}
