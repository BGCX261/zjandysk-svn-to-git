package com.crm.pojo;

import java.util.Set;

public class OrgName {
	private String id;
	private String name;
	private Set<Org> orgSet;
	
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
	public void setOrgSet(Set<Org> orgSet) {
		this.orgSet = orgSet;
	}
	public Set<Org> getOrgSet() {
		return orgSet;
	}
	
}
