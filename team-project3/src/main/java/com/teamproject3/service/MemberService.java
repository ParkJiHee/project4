package com.teamproject3.service;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import com.teamproject3.vo.MemberVo;

public interface MemberService {

	void SignupMember(MemberVo member);

	List<MemberVo> findAllMembers(int centerNo);

	MemberVo findMember(int memberNo);

	int findAllMemberCount(int centerNo);

	void deleteMembers(ArrayList<Integer> deleteArray);

	int findSingupMemberNo(int centerNo);

	void updateMember(MemberVo memberVo);

}
