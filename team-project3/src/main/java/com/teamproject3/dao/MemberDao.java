package com.teamproject3.dao;

import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

public interface MemberDao {

	void insertMember(MemberVo member);

	void insertMemberAttach(MemberAttachVo attach);

}
