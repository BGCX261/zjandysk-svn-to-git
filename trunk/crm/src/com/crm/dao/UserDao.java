package com.crm.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.crm.pojo.Org;
import com.crm.pojo.OrgName;
import com.crm.pojo.User;



public class UserDao{
	
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	


	public User findByEmail(String email) {
		String hql = "from User where email = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, email);
		
		return (User)query.uniqueResult();
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



	public void save(User user, OrgName orgName, Org org) {
		getSession().save(user);
		getSession().save(orgName);
		getSession().save(org);
		
	}



	public void save(User user) {
		getSession().saveOrUpdate(user);
		
	}



	public User findById(String uid) {
		String hql = "from User where id = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, uid);
		
		return (User)query.uniqueResult();
	}



	public User findByEmailAndPwd(String email, String password) {
		String hql = "from User where email = ? and password = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, email);
		query.setParameter(1, password);
		
		return (User)query.uniqueResult();
	}



	public Org findOrg(User user) {
		String hql = "from Org where userid = ?";
		Query query = getSession().createQuery(hql);
		query.setParameter(0, user.getId());
		
		
		return (Org)query.uniqueResult();
	}
	
}
