package com.teamproject3.mapper;

import java.util.HashMap;
import java.util.List;

import com.teamproject3.vo.CenterAttachVo;
import com.teamproject3.vo.CenterVo;

public interface CenterMapper {
	void insertCenter(CenterVo center);
	CenterVo selectCenterByIdAndPasswd(HashMap<String, Object> params);
	void insertCenterAttach(CenterAttachVo attach);
	void updateCenter(CenterVo center);
	void updateCenterAttach(CenterAttachVo attach);
	List<CenterAttachVo> selectCenterAttach(int centerNo);
}
