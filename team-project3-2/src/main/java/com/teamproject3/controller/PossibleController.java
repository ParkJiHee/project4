package com.teamproject3.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teamproject3.service.MemberService;
import com.teamproject3.service.PossibleService;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;
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
	@Qualifier("memberService")
	private MemberService memberService;
	
	@RequestMapping(value= {"/", "/possiblemember.action"},  method = RequestMethod.GET )
	public String view( //@ModelAttribute("membervo") MemberVo member,)
			@RequestParam(value = "pageno", required = false, defaultValue = "1") Integer pageNo,
			Model model, HttpSession session ) {	//int memberNo
			
	int pageSize = 30; // 한 페이지에 표시되는 데이터 개수
	int from = (pageNo - 1) * pageSize + 1; // 해당 페이지에 포함된 시작 글번호
	int to = from + pageSize; // 해당 페이지에 포함된 마지막 글번호 + 1
	int pagerSize = 5; // 한 번에 표시되는 페이지 번호 개수
//	String linkUrl = "possiblemember.action"; // 페이지 번호를 눌렀을 때 이동할 경로

	List<MemberVo> members = possibleService.findAllMemberByPage(from, to);
	
	CenterVo center = (CenterVo)session.getAttribute("loginuser");
	List<VisitPurposeVo> purpose = possibleService.findPurposeListByMemberNo(center.getCenterNo());
	
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
	
	@RequestMapping(value= "/possiblemember.action", method = RequestMethod.POST)
	public String newregister(MemberVo member, String reqType) {
			//int centerNo) { //, MultipartFile file) {
		
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
		
//		if(){
		possibleService.insertMember(member);
		
		
		if (reqType.equals("prod")) {
			return String.format("redirect:/purchase/purSelect.action?centerno=%d&memberno=%d", 
					member.getCenterNo(), member.getMemberNo());
		}
		
		
		
		return "redirect:possiblemember.action";
//		}
		
//		else {
//			int memberNo = member.getMemberNo();
//			int centerNo = center.getCenterNo();
//			return String.format("redirect:/purchase/purSelect.action?memberNo=%s&centerNo=%s", memberNo,centerNo);
//		}
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
//			return "redirect:possiblemember.action";
//		}

}
