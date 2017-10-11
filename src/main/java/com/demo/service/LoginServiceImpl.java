package com.demo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.LoginDAO;
import com.demo.entity.LoginEntity;

@Transactional
@Service
public class LoginServiceImpl implements LoginSevice{
	public LoginDAO loginDao;
	
	@Autowired
	public void setLoginDao(LoginDAO loginDao) {
		this.loginDao = loginDao;
	}

	@Transactional
	@Override
	public void loginPage(LoginEntity le) {
		// TODO Auto-generated method stub
		this.loginDao.loginPage(le);
	}

}
