package com.teamproject3.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.teamproject3.service.MemberService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	@Qualifier("memberService")//서비스의 의존성 주입
	private MemberService memberService;
	
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String memberListForm(Locale locale, Model model,
			HttpSession session, HttpServletRequest req, CenterVo center) {
		
		center = (CenterVo)session.getAttribute("loginuser");
		if (center == null) {
			session.setAttribute("loginuser", center);
			return "redirect:/login.action";
		}
		
		List<MemberVo> members = memberService.findAllMembers(center.getCenterNo());
		
		model.addAttribute("members", members);
		
		return "member/memberlist";
	}
	
	@RequestMapping(value = "/membersignup.action", method = RequestMethod.POST)
	@ResponseBody
	public String memberSignup(MemberVo member) {
		
		/*MultipartFile attach = req.getFile("attach");

		ArrayList<MemberAttachVo> attachments = new ArrayList<>();
		if (attach != null && !attach.isEmpty()) {
			// 파일저장
			String savedFileName = com.teamproject3.common.Util.makeUniqueFileName(attach.getOriginalFilename()); // 고유 파일명 만들기
			String path = req.getServletContext().getRealPath("/resources/member-upload/" + savedFileName); // 저장 경로 만들기

			try {
				attach.transferTo(new File(path)); // 파일 저장하기

				// 데이터베이스에 저장할 데이터로 vo 객체 만들기
				MemberAttachVo attachment = new MemberAttachVo();
				attachment.setSavedFileName(savedFileName);
				attachment.setUserFileName(attach.getOriginalFilename());

				attachments.add(attachment);
			} catch (Exception ex) {
			}
		}

		member.setAttachments(attachments);
		memberService.SignupMember(member);*/
		
		memberService.SignupMember(member);
		
		return "success";

	}
}
