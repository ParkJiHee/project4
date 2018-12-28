package com.teamproject3.mapper;

import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

public interface MemberMapper {

	void insertMember(MemberVo member);
	void insertMemberAttach(MemberAttachVo attach);
}
