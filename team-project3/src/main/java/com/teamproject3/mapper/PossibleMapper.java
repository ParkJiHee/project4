package com.teamproject3.mapper;
        

import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;

public interface PossibleMapper {

	void insertMember(MemberVo member);

	void insertPurpose(List<VisitPurposeVo> purpose);



}
