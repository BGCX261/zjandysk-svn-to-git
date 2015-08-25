package com.crm.service;

import java.io.IOException;


import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.transaction.annotation.Transactional;

import com.crm.dao.UserDao;
import com.crm.pojo.Org;
import com.crm.pojo.OrgName;
import com.crm.pojo.User;
import com.crm.util.UUUtil;
@Transactional
public class UserService{
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User findByEmail(String email) {
		return userDao.findByEmail(email);
		
	}

	

	public void save(User user, OrgName orgName) {
		String u1 = UUUtil.getUUID();
		user.setId(u1);
		orgName.setId(UUUtil.getUUID());
		Org org = new Org();
		org.setId(UUUtil.getUUID());
		org.setOrgName(orgName);
		org.setUser(user);
		org.setRole(1);
		
		userDao.save(user,orgName,org);
		
		sendEmail(user);
		
	}

	public void active(String uid) {
		if(uid == null || "".equals(uid)){
			
		}else{
			User user = userDao.findById(uid);
			if(user == null){
				
			}else{
				user.setState(1);
				userDao.save(user);
			}
			
		}
		
	}

	public User findByEmailAndPwd(String email, String password) throws IOException {
		return userDao.findByEmailAndPwd(email,password);
		
		
	}

	public void update(User user) {
		userDao.save(user);
		
	}

	public void sendEmail(User user) {
		HtmlEmail email = new HtmlEmail(); 
		email.setHostName("smtp.gmail.com"); 
		email.setAuthentication("yangsk2011@gmail.com", "HRBYSK1121228"); 
		email.setCharset("UTF-8"); 
		email.setTLS(true); 
		 
		try { 
		email.setFrom("yangsk2011@gmail.com"); 
		email.setSubject("workxp发送的激活邮件"); 
		email.setHtmlMsg("localhost/crm/active.jspx?uid="+user.getId()); 
		email.addTo(user.getEmail()); 
		email.send(); 
		} catch (EmailException e) { 
		    e.printStackTrace(); 
		} 
		
	}

	public Org findOrg(User user) {
		return userDao.findOrg(user);
	}

	
	
}
