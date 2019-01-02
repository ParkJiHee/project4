package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

public interface MemberDao {

	void insertMember(MemberVo member);

	void insertMemberAttach(MemberAttachVo attach);

	List<MemberAttachVo> selectMemberAttachByMemberNo(int memberNo);

	List<MemberVo> selectAllMembers(int centerNo);

	MemberVo selectMember(int memberNo);

}
