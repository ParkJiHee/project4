package com.teamproject3.service;

import java.util.List;

import com.teamproject3.common.Util;
import com.teamproject3.dao.CenterDao;
import com.teamproject3.vo.CenterAttachVo;
import com.teamproject3.vo.CenterVo;
import com.teamproject3.vo.MemberAttachVo;
import com.teamproject3.vo.MemberVo;

public class CenterServiceImpl implements CenterService{
	
	private CenterDao centerDao;
	public void setCenterDao(CenterDao centerDao) {
		this.centerDao = centerDao;
	}

	@Override
	public CenterVo findMemberByIdAndPasswd(CenterVo center) {
		String passwd = center.getCenPasswd();
		passwd = Util.getHashedString(passwd, "SHA-256");
		center.setCenPasswd(passwd);
		
		CenterVo center2 = centerDao.selectCenterByIdAndPasswd(center);
		
		if(center2 != null) {
			List<CenterAttachVo> attachments = centerDao.selectCenterAttach(center2.getCenterNo());
			center2.setAttachments(attachments);
		}
		
		return center2;
	}

	@Override
	public void registerMember(CenterVo center) {
		String passwd = center.getCenPasswd();
		passwd = Util.getHashedString(passwd, "SHA-256");
		center.setCenPasswd(passwd);
		
		centerDao.insertCenter(center);
		
		for (CenterAttachVo attach : center.getAttachments()) {
			attach.setCenterNo(center.getCenterNo());
			centerDao.insertCenterAttach(attach);
		}
		
	}

	@Override
	public void updateCenter(CenterVo centerVo) {
		String passwd = centerVo.getCenPasswd();
		passwd = Util.getHashedString(passwd, "SHA-256");
		centerVo.setCenPasswd(passwd);
		
		centerDao.updateCenter(centerVo);
		
		if(centerVo.getAttachments().size() > 0) {
			for (CenterAttachVo attach : centerVo.getAttachments()) {
				attach.setCenterNo(centerVo.getCenterNo());
				centerDao.updateCenterAttach(attach);
			}
		}
	}

	@Override
	public void insertCenterAttach(CenterAttachVo attach) {
		centerDao.insertCenterAttach(attach);
	}
}
