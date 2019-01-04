package com.teamproject3.service;

import java.util.ArrayList;
import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;

public interface PossibleService {

	void insertMember(MemberVo member);

	void registerpurpose(String[] purpose, int memberNo);

	ArrayList<VisitPurposeVo> findPurposeListByMemberNo(int memberNo);

	List<MemberVo> findAllMemberByPage(int from, int to);

	

}
