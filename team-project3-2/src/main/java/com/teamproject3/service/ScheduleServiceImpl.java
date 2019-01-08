package com.teamproject3.service;

import java.util.List;

import com.teamproject3.dao.ScheduleDao;
import com.teamproject3.vo.ScheduleVo;

public class ScheduleServiceImpl implements ScheduleService {

	private ScheduleDao scheduleDao;// = new BoardDao();
	public void setScheduleDao(ScheduleDao scheduleDao) {
		this.scheduleDao = scheduleDao;
	}
	
	@Override
	public void writeSchedule(ScheduleVo schedule) {
		
		scheduleDao.insertSchedule(schedule);
		
	}

//	@Override
//	public List<ScheduleVo> findAllSchedule(int centerNo) {
//		
//		List<ScheduleVo> schedules = scheduleDao.selectAllSchedule(centerNo);
//		return schedules;
//		
//	}

	@Override
	public List<ScheduleVo> HealthShow(int centerNo) {
		
		List<ScheduleVo> schedules = scheduleDao.healthShow(centerNo);
		return schedules;
	}


	
}
