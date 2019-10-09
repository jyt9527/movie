package com.life113.movie.ServiceImpl;

import java.util.List;

import com.life113.movie.Dao.InformationDao;
import com.life113.movie.DaoImpl.InformationDaoImpl;
import com.life113.movie.Pojo.Information;
import com.life113.movie.Service.InformationService;

public class InformationServiceImpl implements InformationService {
	private InformationDao inforDao = new InformationDaoImpl();// ¶öººÊ½

	@Override
	public List<Information> getInformations() {
		return inforDao.getAllInformation();
	}

	@Override
	public Information getOneInformationById(int id) {
		return inforDao.getInformationId(id);
	}

	@Override
	public Information getOneInformationByPagination(String pagination) {
		return inforDao.getInformationPagination(pagination);
	}

	@Override
	public List<Information> getPagination_New() {
		// TODO Auto-generated method stub
		return inforDao.getInforPagination_New();
	}

	@Override
	public List<Information> getPagination_Chinese() {
		// TODO Auto-generated method stub
		return inforDao.getInforPagination_Chinese();
	}

	@Override
	public List<Information> getPagination_KKC() {

		return inforDao.getInforPagination_KKC();
	}

	@Override
	public List<Information> getPagination_Occident() {
		// TODO Auto-generated method stub
		return inforDao.getInforPagination_Occident();
	}

	@Override
	public List<Information> getPagination_filmReview() {
		// TODO Auto-generated method stub
		return inforDao.getInforPagination_filmReview();
	}

	@Override
	public int save_Information(Information information) {

		return inforDao.updateInformation(information);
	}

	@Override
	public int add_Information(Information information) {
		// TODO Auto-generated method stub
		return inforDao.addInformation(information);
	}

	@Override
	public int delete_Information(Information information) {
		// TODO Auto-generated method stub
		return inforDao.deleteInformation(information);
	}

	// ²âÊÔ
	public static void main(String[] args) {
		InformationServiceImpl in = new InformationServiceImpl();
		System.out.println(in.getOneInformationByPagination("new"));
	}
}
