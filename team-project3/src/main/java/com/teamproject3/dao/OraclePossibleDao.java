package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.mapper.MemberMapper;
import com.teamproject3.mapper.PossibleMapper;
import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;

public class OraclePossibleDao implements PossibleDao {
	
	private PossibleMapper possibleMapper;
	public void setPossibleMapper(PossibleMapper possibleMapper) {
		this.possibleMapper = possibleMapper;
	}
	
	private MemberMapper memberMapper;
	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}
	@Override
	public void insertMember(MemberVo member) {
		memberMapper.insertMember(member);

	}
//	@Override
//	public void insertMemberAttach(MemberAttachVo attach) {
//		
//		
//	}
	@Override
	public void registerpurpose(List<VisitPurposeVo> purpose) {
		possibleMapper.insertPurpose(purpose);	
		
	}


}