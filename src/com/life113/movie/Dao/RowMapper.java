package com.life113.movie.Dao;

import java.sql.ResultSet;

/**
 * @ClassName: RowMapper
 * @Description: ������ģʽ 1.����ӿ�
 * @author: JYT
 * @date: 2018��12��3�� ����9:46:14
 */
public interface RowMapper {
	// ��ӳ�䣬�ѽ������װ��һ������
	public Object mapRow(ResultSet rs);
}
