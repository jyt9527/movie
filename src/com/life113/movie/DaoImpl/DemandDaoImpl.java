package com.life113.movie.DaoImpl;

import java.util.ArrayList;
import java.util.List;

import com.life113.movie.Pojo.Demand;
import com.life113.movie.Pojo.DemandRowMapper;
import com.life113.movie.Utils.JdbcpUtils;

public class DemandDaoImpl implements com.life113.movie.Dao.DemandDao {

	@Override
	public List<Demand> getDemands() {
		String sql = "select id,username,userdemand,date from user_demand";
		// 把从数据库获取到的数据放进一个List集合
		List<Object> objList = JdbcpUtils.getObjects(sql, null, new DemandRowMapper());
		// 然后把objList添加进demList
		List<Demand> demList = null;
		if (objList != null) {
			demList = new ArrayList<Demand>();
			// 增强for循环
			for (Object obj : objList) {
				demList.add((Demand) obj);
			}
		}
		return demList;
	}

	@Override
	public Demand getDemand(int id) {
		String sql = "select id,username,userdemand,date from user_demand where id=?";
		return (Demand) JdbcpUtils.getOneObject(sql, new Object[] { id }, new DemandRowMapper());
	}

	@Override
	public int addDemand(Demand demand) {
		String sql = "insert into user_demand values(?,?,?,?)";
		return JdbcpUtils.update(sql,
				new Object[] { demand.getId(), demand.getUserName(), demand.getUserDemand(), demand.getDate() });
	}

	@Override
	public int deleteDemand(Demand demand) {
		String sql = "delete from user_demand where id = ? ";
		return JdbcpUtils.executeUpdate(sql, new Object[] { demand.getId() });

	}

}
