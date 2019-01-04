package com.teamproject3.dao;

import java.util.ArrayList;
import java.util.List;

import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;


public interface PossibleDao {

	void insertMember(MemberVo member);

	void registerpurpose(List<VisitPurposeVo> vpv);

	ArrayList<VisitPurposeVo> selectPurposeByMemberNo(int memberNo);


//	void insertMemberAttach(MemberAttachVo attach);

}
