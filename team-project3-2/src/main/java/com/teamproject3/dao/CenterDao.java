package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.vo.CenterAttachVo;
import com.teamproject3.vo.CenterVo;

public interface CenterDao {

	void insertCenter(CenterVo center);

	CenterVo selectCenterByIdAndPasswd(CenterVo center);

	void insertCenterAttach(CenterAttachVo attach);

	List<CenterAttachVo> selectCenterAttach(int centerNo);

	void updateCenter(CenterVo centerVo);

	void updateCenterAttach(CenterAttachVo attach);

}
