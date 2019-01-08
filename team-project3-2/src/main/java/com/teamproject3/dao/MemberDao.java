package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface MemberDao {

	void insertMember(MemberVo member);

	void insertMemberAttach(MemberAttachVo attach);

	List<MemberAttachVo> selectMemberAttachByMemberNo(int memberNo);

	List<MemberVo> selectAllMembers(int centerNo);

	MemberVo selectMember(int memberNo);

	int selectAllMemberCount(int centerNo);

	void deleteMember(int deletNum);

	int selectSignupMember(int centerNo);

	void updateMember(MemberVo memberVo);

	List<MemberVo> selectAllNoPayMembers(int centerNo);

	int selectAllNoPayMemberCount(int centerNo);

	List<MemberVo> selectAllPayMembers(int centerNo);

	int selectAllPayMemberCount(int centerNo);

	List<MemberVo> selectFinishedMembers(int centerNo);

	int selectFinishedMemberCount(int centerNo);

	List<MemberVo> selectFinished3Members(int centerNo);

	int selectFinished3MemberCount(int centerNo);

	List<MemberVo> selectFinished7Members(int centerNo);

	int selectFinished7MemberCount(int centerNo);

	List<PurchaseVo> selectAllMemberProduct(int memberNo);

	void updateMemberAttach(MemberAttachVo attach);

}
