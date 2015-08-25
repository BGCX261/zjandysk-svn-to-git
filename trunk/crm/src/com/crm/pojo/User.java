package com.crm.pojo;

import java.util.Set;

public class User {
	private String id;
	private String username;
	private String email;
	private String password;
	private String face;
	private Set<Org> orgSet;
	private int state;
	
	
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public void setOrgSet(Set<Org> orgSet) {
		this.orgSet = orgSet;
	}
	public Set<Org> getOrgSet() {
		return orgSet;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
}
