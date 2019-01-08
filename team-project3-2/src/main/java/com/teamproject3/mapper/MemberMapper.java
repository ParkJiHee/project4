package com.teamproject3.mapper;

import java.util.List;

import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface MemberMapper {

	void insertMember(MemberVo member);
	void insertMemberAttach(MemberAttachVo attach);
	List<MemberVo> selectAllMembers(int centerNo);
	MemberVo selectMember(int memberNo);
	int selectAllMemberCount(int centerNo);
	void deleteMember(int deletNum);
	int selectSignupMember(int centerNo);
	void updateMember(MemberVo member);
	List<MemberVo> selectAllNoPayMembers(int centerNo);
	int selectAllNoPayMemberCount(int centerNo);
	List<MemberVo> selectAllPayMembers(int centerNo);
	int selectAllPayMemberCount(int centerNo);
	List<MemberVo> selectFinishMembers(int centerNo);
	int selectFinishMemberCount(int centerNo);
	List<MemberVo> selectFinished3Members(int centerNo);
	int selectFinished3MemberCount(int centerNo);
	List<MemberVo> selectFinished7Members(int centerNo);
	int selectFinished7MemberCount(int centerNo);
	List<MemberVo> selectAllMemberProduct(int memberNo);
	List<MemberAttachVo> selectMemberAttachByMemberNo(int memberNo);
}
