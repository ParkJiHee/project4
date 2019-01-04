package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.mapper.ScheduleMapper;
import com.teamproject3.vo.ScheduleVo;

public class OracleScheduleDao implements ScheduleDao{

//	Connection conn = null;
//	PreparedStatement pstmt = null;
//	ResultSet rs = null;
//	
//	private JdbcTemplate jdbcTemplate;
//	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
//		this.jdbcTemplate = jdbcTemplate;
//	}
	
	private ScheduleMapper scheduleMapper;

	public void setScheduleMapper(ScheduleMapper scheduleMapper) {
		this.scheduleMapper = scheduleMapper;
	}


	@Override
	public void insertSchedule(ScheduleVo schedule) {
		
		scheduleMapper.insertSchedule(schedule);
		
	}

	@Override
	public List<ScheduleVo> healthShow(int centerNo) {
		
		List<ScheduleVo> schedules = scheduleMapper.healthShow(centerNo);
		
		return schedules;
	}
	
}
