package com.life113.movie.Dao;

import java.sql.ResultSet;

/**
 * @ClassName: RowMapper
 * @Description: 策略者模式 1.定义接口
 * @author: JYT
 * @date: 2018年12月3日 下午9:46:14
 */
public interface RowMapper {
	// 行映射，把结果集封装成一个对象
	public Object mapRow(ResultSet rs);
}
