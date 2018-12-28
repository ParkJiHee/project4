package com.teamproject3.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teamproject3.vo.MemberVo;

//잠재고객
@Controller
@RequestMapping(value="/financial/")
public class PossibleController {
	
	@RequestMapping(value= {"/", "/possiblemember.action"},  method = RequestMethod.POST )
	public String newregister(//@ModelAttribute("membervo") MemberVo member,
			HttpSession session, HttpServletRequest req) {
		
//		member = (MemberVo)session.getAttribute("loginuser");
//		if (member == null) {
//			session.setAttribute("loginuser", member);
//			return "redirect:/account/login.action";
//		}
//		
//		return "studylist/studyregister";
		
		return "financial/possiblemember.action";
	}
}
