package com.crm.pojo;

public class Chance {
	private String id;
	private String name;
	private String desc;
	private float money;
	private String view;
	private int state;
	private ChanceType chanceType;
	private Book book;
	private Org doOrg;
	private Org createOrg;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public ChanceType getChanceType() {
		return chanceType;
	}
	public void setChanceType(ChanceType chanceType) {
		this.chanceType = chanceType;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public Org getDoOrg() {
		return doOrg;
	}
	public void setDoOrg(Org doOrg) {
		this.doOrg = doOrg;
	}
	public Org getCreateOrg() {
		return createOrg;
	}
	public void setCreateOrg(Org createOrg) {
		this.createOrg = createOrg;
	}
	
	
}
