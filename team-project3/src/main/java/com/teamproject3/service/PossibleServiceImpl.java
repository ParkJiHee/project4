package com.teamproject3.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.teamproject3.dao.PossibleDao;
import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;

public class PossibleServiceImpl implements PossibleService {
	
	private PossibleDao possibleDao;
	public void setPossibleDao(PossibleDao possibleDao) {
		this.possibleDao = possibleDao;
	}

	@Override
	public void insertMember(MemberVo member) {
		
		possibleDao.insertMember(member);
		
//		for(MemberAttachVo attach : member.getAttachments()) {
//			attach.setAttachNo(member.getMemberNo());
//			possibleDao.insertMemberAttach(attach);
//		}
	}

	//체크박스 INPUT
	@Override
	public void registerpurpose(String[] purpose, int memberNo) {
		
//		HashMap<String, Object> params = new HashMap<>();
//		for(String p : purpose) {
//			
//		}
		ArrayList<VisitPurposeVo> vpv = new ArrayList<>();
		
		for (String p : purpose) {
			VisitPurposeVo vp = new VisitPurposeVo();
			vp.setMemberNo(memberNo);
			vp.setPurpose(p);
			vpv.add(vp);
		}
		
		possibleDao.registerpurpose(vpv);
		
	}

	@Override
	public ArrayList<VisitPurposeVo> findPurposeListByMemberNo(int memberNo) {
		
		ArrayList<VisitPurposeVo> purpose = possibleDao.selectPurposeByMemberNo(memberNo);
		return purpose;
	}


	
	
	
}
