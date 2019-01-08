package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;


public interface PossibleDao {

	void insertMember(MemberVo member);

	void registerpurpose(List<VisitPurposeVo> vpv);

	List<VisitPurposeVo> selectPurposeByMemberNo(int centerNo);

	List<MemberVo> selectAllMemberByPage(int from, int to);




//	void insertMemberAttach(MemberAttachVo attach);

}
