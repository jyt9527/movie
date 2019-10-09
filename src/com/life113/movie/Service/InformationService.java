package com.life113.movie.Service;

import java.util.List;

import com.life113.movie.Pojo.Information;

public interface InformationService {

	public List<Information> getInformations();

	public List<Information> getPagination_New();

	public List<Information> getPagination_Chinese();

	public List<Information> getPagination_KKC();

	public List<Information> getPagination_Occident();

	public List<Information> getPagination_filmReview();

	public Information getOneInformationById(int id);

	public Information getOneInformationByPagination(String pagination);

	public int save_Information(Information information);

	public int add_Information(Information information);

	public int delete_Information(Information information);
}
