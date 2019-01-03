package com.teamproject3.service;

import com.teamproject3.dao.AccountantDao;

public class AccountantServiceImpl implements AccountantService{
	private AccountantDao accountantDao;
	public void setAccountantDao(AccountantDao accountantDao) {
		this.accountantDao = accountantDao;
	}
}
