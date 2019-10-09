package com.life113.movie.Pojo;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.life113.movie.Dao.RowMapper;

public class DemandRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs) {
		Demand demand = new Demand();
		try {
			demand.setId(rs.getInt("id"));
			demand.setUserName(rs.getString("username"));
			demand.setUserDemand(rs.getString("userdemand"));
			demand.setDate(rs.getDate("date"));
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return demand;
	}

}
