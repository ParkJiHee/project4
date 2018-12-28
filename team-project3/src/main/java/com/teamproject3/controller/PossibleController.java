package com.teamproject3.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.teamproject3.vo.MemberVo;

//잠재고객
@Controller
@RequestMapping(value="/financial/")
public class PossibleController {
	
	@RequestMapping(value= {"/", "/possiblemember.action"},  method = RequestMethod.POST )
	public String newregister(@ModelAttribute("membervo") MemberVo member,
			MultipartHttpServletRequest req) {
		
//		member = (MemberVo)session.getAttribute("loginuser");
//		if (member == null) {
//			session.setAttribute("loginuser", member);
//			return "redirect:/account/login.action";
//		}
//		
//		return "studylist/studyregister";
		
	/*	MultipartFile attach = req.getFile("file");
		System.out.println("파일  " + attach);

		ArrayList<St> attachments = new ArrayList<>();
		if (attach != null && !attach.isEmpty()) {
			// 파일저장
			String savedFileName = Util.makeUniqueFileName(attach.getOriginalFilename());
			String path = req.getServletContext().getRealPath("/resources/studyupload/" + savedFileName);
			System.out.printf("저장되냐========\n" + path);
			try {
				attach.transferTo(new File(path));

				StudyAttach attachment = new StudyAttach();
				attachment.setS_savedFileName(savedFileName);
				attachment.setS_userFileName(attach.getOriginalFilename());
				
				attachments.add(attachment);
				System.out.println("파일저장성공" + attachment);
			} catch (Exception e) {

			}
		}

		studyvo.setAttachments(attachments);
		studyService.writeStudy(studyvo);
		System.out.println("2======"+studyvo);*/
		
		
		return "financial/possiblemember.action";
	}
}
