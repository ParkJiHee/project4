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

	List<MemberVo> findAllNoPayMembers(int centerNo);

	int findAllNoPayMemberCount(int centerNo);

	List<MemberVo> findAllPayMembers(int centerNo);

	int findAllPayMemberCount(int centerNo);

	List<MemberVo> findFinishedMembers(int centerNo);

	int findFinishedMemberCount(int centerNo);

	List<MemberVo> findFinished3Members(int centerNo);

	int findFinished3MemberCount(int centerNo);

	List<MemberVo> findFinished7Members(int centerNo);

	int findFinished7MemberCount(int centerNo);

	List<MemberVo> findAllMemberProduct(int memberNo);

}
