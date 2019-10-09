package com.life113.movie.Service;

import java.util.List;

import com.life113.movie.Pojo.Demand;

public interface DemandService {
	List<Demand> getAllDemand();

	public Demand getOneDemandById(int id);

	int saveDemand(Demand demand);

	int deleteDemand(Demand demand);
}
