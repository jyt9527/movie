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
 * ����Ŀ�õĻ���DBCP����Ĺ����� ,���� ����DBCP����Ĺ����� 1.���Ƚ�һЩ������Ϣ 2.���ý�һ���ţ���һ��
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
	 * ��ȡConnection�Ķ���
	 * 
	 * @return Connection����
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
	 * @param sql  ��ѯ���
	 * @param objs ��?Ҫ����ֵ
	 * @return �Ѳ�ѯ�����ResulstSet�ķ�ʽ���أ� �����Խ�һ���Ż� ������ģʽ
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
	 * ��ѯһ������ɵ��н�����������ӳ��
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
	 * ��ѯ��������ɶ��н���������󼯺ϵ�ӳ��
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
	 * ִ����ӡ�ɾ�����޸ĵ�SQL��� ʹ��PreparedStatement�ӿ�
	 * 
	 * @param sql  Ҫִ�е�SQL���
	 * @param objs [] SQL���������?��ֵ
	 * @return Ӱ�����ݿ���м�¼����������0���ڱ�ʾִ��ʧ�ܡ�
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
	 * ִ����ӡ�ɾ�����޸ĵ�SQL��� ʹ��Statement�ӿ�
	 * 
	 * @param sql Ҫִ�е�SQL���
	 * @return Ӱ�����ݿ���м�¼����������0���ڱ�ʾִ��ʧ�ܡ�
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
	 * �ر�JdbcUtils���е�rs��pst��conn
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

	// �����Ĵ���ͬǰ��

	/**
	 * �ͷ�ResultSet��Statement��Connection����
	 * 
	 * @param rs   ResultSet����
	 * @param st   Statement����
	 * @param conn Connection����
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
