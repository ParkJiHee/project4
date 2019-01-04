package com.teamproject3.mapper;

import java.util.List;

import com.teamproject3.vo.ScheduleVo;

public interface ScheduleMapper {
	void insertSchedule(ScheduleVo schedule);

	List<ScheduleVo> healthShow(int centerNo);
}
