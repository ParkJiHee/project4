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
import com.teamproject3.ui.ThePager;
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
	public String view( //@ModelAttribute("membervo") MemberVo member,)
			@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageNo,
			Model model ) {	//int memberNo
			
	int pageSize = 10; // 한 페이지에 표시되는 데이터 개수
	int from = (pageNo - 1) * pageSize + 1; // 해당 페이지에 포함된 시작 글번호
	int to = from + pageSize; // 해당 페이지에 포함된 마지막 글번호 + 1
	int pagerSize = 5; // 한 번에 표시되는 페이지 번호 개수
	String linkUrl = "study.action"; // 페이지 번호를 눌렀을 때 이동할 경로

	List<MemberVo> members = possibleService.findAllMemberByPage(from, to);
	//VisitPurposeVo purpose = possibleService.findPurposeListByMemberNo(memberNo);
	
//	int purposeCount = possibleService.findMemberCount();

//	ThePager pager = new ThePager(purposeCount, pageNo, pageSize, pagerSize, linkUrl);

	// JSP에서 읽을 수 있도록 request객체에 조회된 데이터 저장 (forward 이동이기 때문에)
	model.addAttribute("members", members);
//	model.addAttribute("purpose", purpose);
//	model.addAttribute("pager", pager);
//	model.addAttribute("pageno", pageNo);

	
		
//		member = (MemberVo)session.getAttribute("loginuser");
//		if (member == null) {
//			session.setAttribute("loginuser", member);
//			return "redirect:/account/login.action";
//		}
//		

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

//		// 댓글 리스트
//		@RequestMapping(value = "/get-input-list.action", method = RequestMethod.GET)
//		public String listpurpose(int memberNo, Model model) {
//
//			List<VisitPurposeVo> purposes = possibleService.findPurposeListByMemberNo(memberNo);
//			model.addAttribute("purpose", purposes);
//			model.addAttribute("memberNo", memberNo);
//			return "financial/possiblemember";
//		}

}
