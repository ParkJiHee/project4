package com.teamproject3.service;

import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.VisitPurposeVo;

public interface PossibleService {

	void insertMember(MemberVo member);

	void registerpurpose(String[] purpose, int memberNo);

	

}
