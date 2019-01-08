package com.teamproject3.dao;

import java.util.List;

import com.teamproject3.vo.ScheduleVo;

public interface ScheduleDao {

	void insertSchedule(ScheduleVo schedule);

	List<ScheduleVo> healthShow(int centerNo);

	void deleteSchedule(int scheduleNo);

//	void insertProduct(ProductVo hobby);
//
//	List<ProductVo> selectAllProduct();
//
//	int selectProductCount();
//
//	ProductVo selectProductByProductNo(int hobbyNo);
//
//	void deleteProduct(int productNo);
//
//	void updateProduct(ProductVo product);
	
}
