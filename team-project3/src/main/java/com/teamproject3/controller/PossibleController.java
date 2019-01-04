package com.teamproject3.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.number.NumberFormatter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.teamproject3.service.MemberService;
import com.teamproject3.service.PossibleService;
import com.teamproject3.service.ProductService;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;

//잠재고객
@Controller
@RequestMapping(value="/financial/")
public class PossibleController {
	
	@InitBinder    
    public void customizeBinding (WebDataBinder binder) {
        SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
        dateFormatter.setLenient(false);
        binder.registerCustomEditor(Date.class,
                                    new CustomDateEditor(dateFormatter, true));
    }
	
	
	@Autowired
	@Qualifier("possibleService")
	private PossibleService possibleService;
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	@Autowired
	@Qualifier("memberService")
	private MemberService memberService;

	
	@RequestMapping(value= {"/", "/possiblemember.action"},  method = RequestMethod.GET )
	public String view() {//@ModelAttribute("membervo") MemberVo member,) {
		
//		member = (MemberVo)session.getAttribute("loginuser");
//		if (member == null) {
//			session.setAttribute("loginuser", member);
//			return "redirect:/account/login.action";
//		}
//		
//		return "studylist/studyregister";
			
		return "financial/possiblemember";
	}
	
	@RequestMapping(value= {"/", "/possiblemember.action"}, method = RequestMethod.POST)
	public String newregister(@ModelAttribute("member") MemberVo member) { //, MultipartFile file) {
		
/*		MultipartFile attach = req.getFile("file");
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
		System.out.println("2======"+studyvo);
		*/
		
		
		possibleService.insertMember(member);
		return "financial/possiblemember";
	}
	
	
	// 댓글 메서드
		@RequestMapping(value = "/registerpurpose.action", method = {RequestMethod.GET, RequestMethod.POST})
		@ResponseBody
		public String registerpurpose(String[] purpose, int memberNo) {
			
			
//			studyService.writeComment(comment);
			possibleService.registerpurpose(purpose, memberNo);

			return "success";
		}

		// 댓글 리스트
		@RequestMapping(value = "/get-input-list.action", method = RequestMethod.GET)
		public String listpurpose(int memberNo, Model model) {

			ArrayList<VisitPurposeVo> purposes = possibleService.findPurposeListByMemberNo(memberNo);
			model.addAttribute("purpose", purposes);
			model.addAttribute("memberNo", memberNo);
			return "financial/possiblemember";
		}

}
