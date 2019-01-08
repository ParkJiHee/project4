package com.teamproject3.mapper;
        

import java.util.HashMap;
import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;

public interface PossibleMapper {

	void insertMember(MemberVo member);

	void insertPurpose(List<VisitPurposeVo> purpose);

	List<VisitPurposeVo> selectPurposeByMemberNo(int centerNo);

	List<MemberVo> selectMemberList(HashMap<String, Object> params);



}
