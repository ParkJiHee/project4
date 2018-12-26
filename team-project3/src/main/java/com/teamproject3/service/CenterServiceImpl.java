package com.teamproject3.service;

import com.teamproject3.common.Util;
import com.teamproject3.dao.CenterDao;
import com.teamproject3.vo.CenterVo;

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
		
		return center2;
	}

	@Override
	public void registerMember(CenterVo center) {
		String passwd = center.getCenPasswd();
		passwd = Util.getHashedString(passwd, "SHA-256");
		center.setCenPasswd(passwd);
		
		centerDao.insertCenter(center);
		
	}
}
