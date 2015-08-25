package com.crm.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.crm.pojo.Address;
import com.crm.pojo.Book;
import com.crm.pojo.Email;
import com.crm.pojo.Im;
import com.crm.pojo.Phone;
import com.crm.pojo.Sites;

public class ContactDao {
	private SessionFactory sessionFactory;
	

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}


	public void newbook(Book book, Phone phone, Im im, Address address,
			Email email, Sites sites) {
		getSession().save(book);
		getSession().save(phone);
		getSession().save(im);
		getSession().save(address);
		getSession().save(email);
		getSession().save(sites);
		
	}
	public void newbook(Book b) {
		getSession().save(b);
		
	}
	@SuppressWarnings("unchecked")
	public List<Book> findAll() {
		String hql = "from Book";
		Query query = getSession().createQuery(hql);
		return query.list();
	}

}
