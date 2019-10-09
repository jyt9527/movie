package com.life113.movie.ServiceImpl;

import java.util.List;

import com.life113.movie.Dao.DemandDao;
import com.life113.movie.DaoImpl.DemandDaoImpl;
import com.life113.movie.Pojo.Demand;
import com.life113.movie.Service.DemandService;

public class DemandServiceImpl implements DemandService {
	private DemandDao demandDao = new DemandDaoImpl();

	@Override
	public List<Demand> getAllDemand() {
		return demandDao.getDemands();
	}

	@Override
	public Demand getOneDemandById(int id) {
		return demandDao.getDemand(id);
	}

	@Override
	public int saveDemand(Demand demand) {
		return demandDao.addDemand(demand);
	}

	@Override
	public int deleteDemand(Demand demand) {
		return demandDao.deleteDemand(demand);
	}

}
