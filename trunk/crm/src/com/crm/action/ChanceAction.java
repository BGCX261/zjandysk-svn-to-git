package com.crm.action;

import java.util.List;

import com.crm.pojo.Chance;
import com.crm.service.ChanceService;
import com.opensymphony.xwork2.ActionSupport;

public class ChanceAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	private ChanceService chanceService;
	private List<Chance> chanceList;
	private float totalMoney;
	
	public String execute(){
		chanceList=chanceService.findAll();
		totalMoney=0;
		for(Chance chance:chanceList){
			totalMoney+=chance.getMoney();
		}
		return "success";
	}
	public String twoExecute(){
		return "success";
	}
	
	
	public List<Chance> getChanceList() {
		return chanceList;
	}
	public void setChanceList(List<Chance> chanceList) {
		this.chanceList = chanceList;
	}


	public void setChanceService(ChanceService chanceService) {
		this.chanceService = chanceService;
	}


	public float getTotalMoney() {
		return totalMoney;
	}


	public void setTotalMoney(float totalMoney) {
		this.totalMoney = totalMoney;
	}

	
	 
}
