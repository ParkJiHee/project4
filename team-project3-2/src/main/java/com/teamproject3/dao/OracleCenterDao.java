package com.teamproject3.dao;

import java.util.HashMap;
import java.util.List;

import com.teamproject3.mapper.CenterMapper;
import com.teamproject3.vo.CenterAttachVo;
import com.teamproject3.vo.CenterVo;

public class OracleCenterDao implements CenterDao{
	
	private CenterMapper centerMapper;
	public void setCenterMapper(CenterMapper centerMapper) {
		this.centerMapper = centerMapper;
	}
	
	@Override
	public void insertCenter(CenterVo center) {
		centerMapper.insertCenter(center);
	}
	@Override
	public CenterVo selectCenterByIdAndPasswd(CenterVo center) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("cenId", center.getCenId());
		params.put("cenPasswd", center.getCenPasswd());
		
		CenterVo center2 = centerMapper.selectCenterByIdAndPasswd(params);
		
		return center2;
	}

	@Override
	public void insertCenterAttach(CenterAttachVo attach) {
		centerMapper.insertCenterAttach(attach);
		
	}

	@Override
	public List<CenterAttachVo> selectCenterAttach(int centerNo) {
		List<CenterAttachVo> attachs = centerMapper.selectCenterAttach(centerNo);
		return attachs;
	}

	@Override
	public void updateCenter(CenterVo centerVo) {
		centerMapper.updateCenter(centerVo);
	}

	@Override
	public void updateCenterAttach(CenterAttachVo attach) {
		centerMapper.updateCenterAttach(attach);
	}
}
