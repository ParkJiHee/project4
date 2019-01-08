package com.teamproject3.mapper;

import java.util.HashMap;
import java.util.List;

import com.teamproject3.vo.MemberVo;
import com.teamproject3.vo.PurchaseVo;

public interface AccountantMapper {

	List<PurchaseVo> selectPurchaseByCenterNo(int centerNo);
}
