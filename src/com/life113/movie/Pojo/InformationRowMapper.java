package com.life113.movie.Pojo;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.life113.movie.Dao.RowMapper;

public class InformationRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs) {
		// Ó³Éä½á¹û¼¯
		Information information = new Information();
		try {
			information.setId(rs.getInt("id"));
			information.setPagination(rs.getString("pagination"));
			information.setHeadline(rs.getString("headline"));
			information.setHeadline_url(rs.getString("headline_url"));
			information.setBrief(rs.getString("brief"));
			information.setPhoto(rs.getString("photo"));
			information.setView(rs.getString("view"));
			information.setComment(rs.getString("comment"));
			information.setShare(rs.getString("share"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return information;
	}

}
