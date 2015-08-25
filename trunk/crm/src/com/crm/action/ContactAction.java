package com.crm.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.crm.pojo.Address;
import com.crm.pojo.Book;
import com.crm.pojo.Email;
import com.crm.pojo.Im;
import com.crm.pojo.Org;
import com.crm.pojo.Phone;
import com.crm.pojo.Sites;
import com.crm.service.ContactService;
import com.opensymphony.xwork2.ActionSupport;

public class ContactAction extends ActionSupport implements SessionAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String,Object> session;
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	private ContactService cs;
	private Book book;
	private Phone phone;
	private Im im;
	private Address address;
	private Email email;
	private Sites sites;
	private List<Book> booklist;
	
	
	public List<Book> getBooklist() {
		return booklist;
	}





	public void setBooklist(List<Book> booklist) {
		this.booklist = booklist;
	}


	public String execute(){
		booklist = cs.findAll();
		return "success";
	}


	public String newperson(){
		Org org = (Org) session.get("org");
		
		cs.newpersoon(book,phone,im,address,email,sites,org);
		return "success";
	}

	
	
	

	public Book getBook() {
		return book;
	}


	public void setBook(Book book) {
		this.book = book;
	}


	public Phone getPhone() {
		return phone;
	}


	public void setPhone(Phone phone) {
		this.phone = phone;
	}


	public Im getIm() {
		return im;
	}


	public void setIm(Im im) {
		this.im = im;
	}


	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}


	public Email getEmail() {
		return email;
	}


	public void setEmail(Email email) {
		this.email = email;
	}


	public Sites getSites() {
		return sites;
	}


	public void setSites(Sites sites) {
		this.sites = sites;
	}


	public Map<String, Object> getSession() {
		return session;
	}


	public void setCs(ContactService cs) {
		this.cs = cs;
	}

	
	
	
	
	
	
	
}
