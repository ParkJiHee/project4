package com.teamproject3.service;

import java.util.List;

import com.teamproject3.vo.ScheduleVo;

public interface ScheduleService {

	List<ScheduleVo> HealthShow(int centerNo);
	
	void writeSchedule(ScheduleVo schedule);

//	List<ScheduleVo> findAllSchedule(int centerNo);
	
}
