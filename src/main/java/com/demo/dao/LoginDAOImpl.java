package com.demo.dao;

import java.util.logging.Logger;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.entity.LoginEntity;

@Repository("loginDao")
public class LoginDAOImpl implements LoginDAO{
	private static final Logger logger = (Logger) LoggerFactory.getLogger(LoginDAOImpl.class);
	
	private LoginDAO loginDao;
	
	public SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void loginPage(LoginEntity le) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(le);
	}

}
