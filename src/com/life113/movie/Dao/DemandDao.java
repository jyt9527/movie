package com.life113.movie.Dao;

import java.util.List;

import com.life113.movie.Pojo.Demand;

public interface DemandDao {
	List<Demand> getDemands();

	Demand getDemand(int id);

	int addDemand(Demand demand);

	int deleteDemand(Demand demand);

}
