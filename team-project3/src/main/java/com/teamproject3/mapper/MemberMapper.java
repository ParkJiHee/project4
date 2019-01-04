package com.teamproject3.mapper;

import java.util.List;

import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

public interface MemberMapper {

	void insertMember(MemberVo member);
	void insertMemberAttach(MemberAttachVo attach);
	List<MemberVo> selectAllMembers(int centerNo);
	MemberVo selectMember(int memberNo);
	int selectAllMemberCount(int centerNo);
	void deleteMember(int deletNum);
	int selectSignupMember(int centerNo);
}
