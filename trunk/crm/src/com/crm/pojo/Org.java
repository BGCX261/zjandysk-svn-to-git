package com.crm.pojo;

import java.util.Set;

public class Org {
	private String id;
	private int role;
	private User user;
	private OrgName orgName;
	private Set<Book> bookSet;
	private Set<Chance> chanceDoSet;
	private Set<Chance> chanceCreateSet;
	
	public Set<Chance> getChanceDoSet() {
		return chanceDoSet;
	}
	public void setChanceDoSet(Set<Chance> chanceDoSet) {
		this.chanceDoSet = chanceDoSet;
	}
	public Set<Chance> getChanceCreateSet() {
		return chanceCreateSet;
	}
	public void setChanceCreateSet(Set<Chance> chanceCreateSet) {
		this.chanceCreateSet = chanceCreateSet;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public OrgName getOrgName() {
		return orgName;
	}
	public void setOrgName(OrgName orgName) {
		this.orgName = orgName;
	}
	public Set<Book> getBookSet() {
		return bookSet;
	}
	public void setBookSet(Set<Book> bookSet) {
		this.bookSet = bookSet;
	}
	
}
