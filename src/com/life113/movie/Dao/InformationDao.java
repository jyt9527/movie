package com.life113.movie.Dao;

import java.util.List;

import com.life113.movie.Pojo.Information;

/**
 * @ClassName: InformationDao
 * @Description:
 * @author: JYT
 * @date: 2018年12月3日 下午10:32:09
 */
public interface InformationDao {
	public List<Information> getAllInformation();

	public List<Information> getInforPagination_Chinese();

	public List<Information> getInforPagination_KKC();

	public List<Information> getInforPagination_New();

	public List<Information> getInforPagination_Occident();

	public List<Information> getInforPagination_filmReview();

	public Information getInformationId(int id);

	public Information getInformationPagination(String pagination);

	public int addInformation(Information information);

	public int updateInformation(Information information);

	public int deleteInformation(Information information);
}
