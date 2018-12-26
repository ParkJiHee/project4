package com.teamproject3.dao;

import com.teamproject3.vo.CenterVo;

public interface CenterDao {

	void insertCenter(CenterVo center);

	CenterVo selectCenterByIdAndPasswd(CenterVo center);

}
