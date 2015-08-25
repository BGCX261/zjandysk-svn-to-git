package com.crm.service;


import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.ContactDao;
import com.crm.pojo.Address;
import com.crm.pojo.Book;
import com.crm.pojo.Email;
import com.crm.pojo.Im;
import com.crm.pojo.Org;
import com.crm.pojo.Phone;
import com.crm.pojo.Sites;
import com.crm.util.UUUtil;
@Transactional
public class ContactService {
	private ContactDao contactDao;
	

	public void setContactDao(ContactDao contactDao) {
		this.contactDao = contactDao;
	}


	public void newpersoon(Book book, Phone phone, Im im, Address address,
			Email email, Sites sites, Org org) {
		book.setId(UUUtil.getUUID());
		book.setCo(0);
		book.setImg("person.png");
		book.setView("222");
		book.setOrg(org);
		
		phone.setId(UUUtil.getUUID());
		phone.setBook(book);
		im.setId(UUUtil.getUUID());
		address.setId(UUUtil.getUUID());
		email.setId(UUUtil.getUUID());
		sites.setId(UUUtil.getUUID());
		im.setBook(book);
		address.setBook(book);
		email.setBook(book);
		sites.setBook(book);
		
		if(!("".equals(book.getCompany()))){
			Book b = new Book();
			b.setCo(1);
			b.setId(UUUtil.getUUID());
			b.setCompany(book.getCompany());
			b.setOrg(org);
			b.setName(book.getCompany());
			contactDao.newbook(b);
		}
		contactDao.newbook(book,phone,im,address,email,sites);
		
		
	}


	public List<Book> findAll() {
		
		return contactDao.findAll();
	}
	

}
