package com.teamproject3.service;

import com.teamproject3.vo.CenterVo;

public interface CenterService {

	CenterVo findMemberByIdAndPasswd(CenterVo center);
	 void registerMember(CenterVo center);
}
