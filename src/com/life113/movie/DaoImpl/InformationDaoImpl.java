package com.life113.movie.DaoImpl;

import java.util.ArrayList;
import java.util.List;

import com.life113.movie.Dao.InformationDao;
import com.life113.movie.Pojo.Information;
import com.life113.movie.Pojo.InformationRowMapper;
import com.life113.movie.Utils.JdbcpUtils;

public class InformationDaoImpl implements InformationDao {

	@Override
	public List<Information> getAllInformation() {
		String sql = "select id,pagination,headline, headline_url,photo,brief,view,comment,share from angelaba ";
		return RefactorGetInformation_(sql);
	}

	@Override
	public Information getInformationId(int id) {
		String sql = "select id,pagination,headline, headline_url,photo,brief,view,comment,share from angelaba where id=? ";
		return (Information) JdbcpUtils.getOneObject(sql, new Object[] { id }, new InformationRowMapper());
	}

	@Override
	public Information getInformationPagination(String pagination) {
		String sql = "select id,pagination,headline, headline_url,photo,brief,view,comment,share from angelaba where pagination=? ";
		return (Information) JdbcpUtils.getOneObject(sql, new Object[] { pagination }, new InformationRowMapper());
	}

	@Override
	public List<Information> getInforPagination_New() {
		String sql = "select * from angelaba where pagination like 'New' ";
		return RefactorGetInformation_(sql);
	}

	@Override
	public List<Information> getInforPagination_Chinese() {
		String sql = "select * from angelaba where pagination like 'Chinese' ";
		return RefactorGetInformation_(sql);
	}

	@Override
	public List<Information> getInforPagination_KKC() {
		String sql = "select * from angelaba where pagination like 'KKC' ";
		return RefactorGetInformation_(sql);
	}

	@Override
	public List<Information> getInforPagination_Occident() {
		String sql = "select * from angelaba where pagination like 'Occident' ";
		return RefactorGetInformation_(sql);
	}

	@Override
	public List<Information> getInforPagination_filmReview() {
		String sql = "select * from angelaba where pagination like 'filmReview' ";
		return RefactorGetInformation_(sql);
	}

	//把代码重复的地方重构为一个方法
	private List<Information> RefactorGetInformation_(String sql) {
		List<Object> objList = JdbcpUtils.getObjects(sql, null, new InformationRowMapper());
		List<Information> inforList = null;
		if (objList != null) {
			inforList = new ArrayList<Information>();
			// 增强for循环
			for (Object obj : objList) {
				inforList.add((Information) obj);
			}
		}
		return inforList;
	}

	@Override
	public int addInformation(Information information) {
		String sql = "insert into angelaba values(?,?,?,?,?,?,?,?,?)";
		return JdbcpUtils.update(sql,
				new Object[] { information.getId(), information.getPagination(), information.getHeadline(),
						information.getHeadline_url(), information.getPhoto(), information.getBrief(),
						information.getView(), information.getComment(), information.getShare() });
	}

	@Override
	public int updateInformation(Information information) {
		String sql = "update  angelaba set pagination='" + information.getPagination() + "',headline='"
				+ information.getHeadline() + "',headline_url='" + information.getHeadline_url() + "',photo='"
				+ information.getPhoto() + "',brief='" + information.getBrief() + "',view='" + information.getView()
				+ "',comment='" + information.getComment() + "' where id=?";
		return JdbcpUtils.update(sql, new Object[] { information.getId() });
	}

	@Override
	public int deleteInformation(Information information) {
		String sql = "delete from angelaba where id=?";
		return JdbcpUtils.executeUpdate(sql, new Object[] { information.getId() });
	}

	// 测试
	public static void main(String[] args) {
		InformationDaoImpl i = new InformationDaoImpl();
		System.out.println(i.getAllInformation());
	}
}
