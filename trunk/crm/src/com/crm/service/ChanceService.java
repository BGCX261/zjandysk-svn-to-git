package com.crm.service;

import java.util.List;

import com.crm.dao.ChanceDao;
import com.crm.pojo.Chance;

public class ChanceService {
	
	private ChanceDao dao;
	
	public List<Chance> findAll() {
		return dao.findAll();
	}

	public void setDao(ChanceDao dao) {
		this.dao = dao;
	}
	
}
