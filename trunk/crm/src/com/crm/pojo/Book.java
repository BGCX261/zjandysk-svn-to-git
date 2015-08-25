package com.crm.pojo;

import java.util.Set;

public class Book {

	private String id;
	private String name;
	private String position;
	private String descr;
	private String weibo;
	private String view;
	private Org org;
	private String company;
	private String img;
	private Set<Email> emailSet;
	private Set<Im> imSet;
	private Set<Phone> phoneSet;
	private Set<Address> addressSet;
	private Set<Sites> sitesSet;

	private Set<Chance> chanceSet;

	private int co;

	
	

	public Set<Chance> getChanceSet() {
		return chanceSet;
	}
	public void setChanceSet(Set<Chance> chanceSet) {
		this.chanceSet = chanceSet;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDescr() {
		return descr;
	}
	public void setDescr(String descr) {
		this.descr = descr;
	}
	public String getWeibo() {
		return weibo;
	}
	public void setWeibo(String weibo) {
		this.weibo = weibo;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	
	public Org getOrg() {
		return org;
	}
	public void setOrg(Org org) {
		this.org = org;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Set<Email> getEmailSet() {
		return emailSet;
	}
	public void setEmailSet(Set<Email> emailSet) {
		this.emailSet = emailSet;
	}
	public Set<Im> getImSet() {
		return imSet;
	}
	public void setImSet(Set<Im> imSet) {
		this.imSet = imSet;
	}
	public Set<Phone> getPhoneSet() {
		return phoneSet;
	}
	public void setPhoneSet(Set<Phone> phoneSet) {
		this.phoneSet = phoneSet;
	}
	public Set<Address> getAddressSet() {
		return addressSet;
	}
	public void setAddressSet(Set<Address> addressSet) {
		this.addressSet = addressSet;
	}
	public Set<Sites> getSitesSet() {
		return sitesSet;
	}
	public void setSitesSet(Set<Sites> sitesSet) {
		this.sitesSet = sitesSet;
	}
	public int getCo() {
		return co;
	}
	public void setCo(int co) {
		this.co = co;
	}
	
	
	
}
