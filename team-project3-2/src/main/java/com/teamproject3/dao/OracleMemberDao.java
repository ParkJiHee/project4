package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.mapper.MemberMapper;
import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

public class OracleMemberDao implements MemberDao{
	
	private MemberMapper memberMapper;

	public void setMemberMapper(MemberMapper memberMapper) {
		this.memberMapper = memberMapper;
	}

	@Override
	public void insertMember(MemberVo member) {
		memberMapper.insertMember(member);
	}

	@Override
	public void insertMemberAttach(MemberAttachVo attach) {
		memberMapper.insertMemberAttach(attach);
	}

	@Override
	public List<MemberAttachVo> selectMemberAttachByMemberNo(int memberNo) {
		List<MemberAttachVo> attachs = memberMapper.selectMemberAttachByMemberNo(memberNo);
		return attachs;
	}

	@Override
	public List<MemberVo> selectAllMembers(int centerNo) {
		
		List<MemberVo> members = memberMapper.selectAllMembers(centerNo);
		
		return members;
	}

	@Override
	public MemberVo selectMember(int memberNo) {
		
		MemberVo member = memberMapper.selectMember(memberNo);
		
		return member;
	}

	@Override
	public int selectAllMemberCount(int centerNo) {
		int count = memberMapper.selectAllMemberCount(centerNo);
		return count;
	}

	@Override
	public void deleteMember(int deletNum) {
		memberMapper.deleteMember(deletNum);
	}

	@Override
	public int selectSignupMember(int centerNo) {
		int memberNo = memberMapper.selectSignupMember(centerNo);
		return memberNo;
	}

	@Override
	public void updateMember(MemberVo memberVo) {
		memberMapper.updateMember(memberVo);
	}

	@Override
	public List<MemberVo> selectAllNoPayMembers(int centerNo) {
		List<MemberVo> members = memberMapper.selectAllNoPayMembers(centerNo);
		return members;
	}

	@Override
	public int selectAllNoPayMemberCount(int centerNo) {
		int count = memberMapper.selectAllNoPayMemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> selectAllPayMembers(int centerNo) {
		List<MemberVo> members = memberMapper.selectAllPayMembers(centerNo);
		return members;
	}

	@Override
	public int selectAllPayMemberCount(int centerNo) {
		int count = memberMapper.selectAllPayMemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> selectFinishedMembers(int centerNo) {
		List<MemberVo> members = memberMapper.selectFinishMembers(centerNo);
		return members;
	}

	@Override
	public int selectFinishedMemberCount(int centerNo) {
		int count = memberMapper.selectFinishMemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> selectFinished3Members(int centerNo) {
		List<MemberVo> members = memberMapper.selectFinished3Members(centerNo);
		return members;
	}

	@Override
	public int selectFinished3MemberCount(int centerNo) {
		int count = memberMapper.selectFinished3MemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> selectFinished7Members(int centerNo) {
		List<MemberVo> members = memberMapper.selectFinished7Members(centerNo);
		return members;
	}

	@Override
	public int selectFinished7MemberCount(int centerNo) {
		int count = memberMapper.selectFinished7MemberCount(centerNo);
		return count;
	}

	@Override
	public List<MemberVo> selectAllMemberProduct(int memberNo) {
		List<MemberVo> members = memberMapper.selectAllMemberProduct(memberNo);
		return members;
	}
	

}
