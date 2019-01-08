package com.teamproject3.service;

import com.teamproject3.vo.CenterAttachVo;
import com.teamproject3.vo.CenterVo;

public interface CenterService {

	CenterVo findMemberByIdAndPasswd(CenterVo center);
	 void registerMember(CenterVo center);
	void updateCenter(CenterVo centerVo);
	void insertCenterAttach(CenterAttachVo attach);
}
