package com.life113.movie.Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSourceFactory;

import com.life113.movie.Dao.RowMapper;

/**
 * 做项目用的基于DBCP组件的工具类 ,好用 基于DBCP组件的工具类 1.事先建一些配置信息 2.不用建一座桥，毁一座
 */
public class JdbcpUtils {
	private static Connection conn = null;
	private static PreparedStatement pst = null;
	private static ResultSet rs = null;
	private static DataSource dataSource = null;
	static {
		try {
			dataSource = BasicDataSourceFactory.createDataSource(ReadDbcpConfig.getProperties());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取Connection的对象
	 * 
	 * @return Connection对象
	 */
	public static Connection getConnection() {
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * @param sql  查询语句
	 * @param objs 给?要赋的值
	 * @return 把查询结果以ResulstSet的方式返回； 还可以进一步优化 策略者模式
	 */
	public static ResultSet executeQuery(String sql, Object[] objs) {
		conn = JdbcpUtils.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			if (objs != null) {
				for (int i = 0; i < objs.length; i++) {
					pst.setObject(i + 1, objs[i]);
				}
			}
			rs = pst.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcpUtils.close(rs, pst, conn);
		}
		return rs;
	}

	/**
	 * 查询一条：完成单行结果集到对象的映射
	 * 
	 * @param sql
	 * @param objs
	 * @param rowMapper
	 * @return
	 */
	public static Object getOneObject(String sql, Object[] objs, RowMapper rowMapper) {
		conn = JdbcpUtils.getConnection();
		Object obj = null;
		try {
			pst = conn.prepareStatement(sql);
			if (objs != null) {
				for (int i = 0; i < objs.length; i++) {
					pst.setObject(i + 1, objs[i]);
				}
			}
			rs = pst.executeQuery();
			if (rs.next()) {
				obj = rowMapper.mapRow(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcpUtils.close(rs, pst, conn);
		}
		return obj;
	}

	/**
	 * 查询多条：完成多行结果集到对象集合的映射
	 * 
	 * @param sql
	 * @param objs
	 * @param rowMapper
	 * @return
	 */
	public static List<Object> getObjects(String sql, Object[] objs, RowMapper rowMapper) {
		conn = JdbcpUtils.getConnection();
		Object obj = null;
		List<Object> objList = null;
		try {
			pst = conn.prepareStatement(sql);
			if (objs != null) {
				for (int i = 0; i < objs.length; i++) {
					pst.setObject(i + 1, objs[i]);
				}
			}
			rs = pst.executeQuery();
			objList = new ArrayList<Object>();
			while (rs.next()) {
				obj = rowMapper.mapRow(rs);
				objList.add(obj);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcpUtils.close(rs, pst, conn);
		}
		return objList;
	}

	/**
	 * 执行添加、删除、修改的SQL语句 使用PreparedStatement接口
	 * 
	 * @param sql  要执行的SQL语句
	 * @param objs [] SQL语句中所有?的值
	 * @return 影响数据库表中记录个数，若是0，在表示执行失败。
	 */
	public static int update(String sql, Object[] objs) {
		Connection conn = JdbcpUtils.getConnection();
		PreparedStatement pst = null;
		int m = 0;
		try {
			pst = conn.prepareStatement(sql);
			if (objs != null) {
				for (int i = 0; i < objs.length; i++) {
					pst.setObject(i + 1, objs[i]);
				}
			}
			m = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcpUtils.close(null, pst, conn);
		return m;
	}

	/**
	 * 执行添加、删除、修改的SQL语句 使用Statement接口
	 * 
	 * @param sql 要执行的SQL语句
	 * @return 影响数据库表中记录个数，若是0，在表示执行失败。
	 */
	public static int executeUpdate(String sql, Object[] objs) {
		Connection conn = JdbcpUtils.getConnection();

		int m = 0;
		PreparedStatement pst = null;
		try {
			if (objs != null) {
				pst = conn.prepareStatement(sql);
				for (int i = 0; i < objs.length; i++) {
					pst.setObject(i + 1, objs[0]);
				}
			}
			m = pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		JdbcpUtils.close(null, pst, conn);
		return m;
	}

	/**
	 * 关闭JdbcUtils类中的rs、pst、conn
	 */
	public static void close() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (pst != null) {
			try {
				pst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	// 其它的代码同前面

	/**
	 * 释放ResultSet、Statement、Connection对象
	 * 
	 * @param rs   ResultSet对象
	 * @param st   Statement对象
	 * @param conn Connection对象
	 */
	public static void close(ResultSet rs, Statement st, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
