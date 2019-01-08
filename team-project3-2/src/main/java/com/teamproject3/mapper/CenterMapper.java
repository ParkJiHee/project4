package com.teamproject3.mapper;

import java.util.HashMap;
import com.teamproject3.vo.CenterVo;

public interface CenterMapper {
	void insertCenter(CenterVo member);
	CenterVo selectCenterByIdAndPasswd(HashMap<String, Object> params);
}
