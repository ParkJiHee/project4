package com.teamproject3.mapper;
        

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;

public interface PossibleMapper {

	void insertMember(MemberVo member);

	void insertPurpose(List<VisitPurposeVo> purpose);

	VisitPurposeVo selectPurposeByMemberNo(int memberNo);

	List<MemberVo> selectMemberList(HashMap<String, Object> params);



}
