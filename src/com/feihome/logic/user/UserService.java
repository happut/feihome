package com.feihome.logic.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.feihome.model.TUser;

@Repository
public class UserService {
	@Autowired
	@Qualifier("userDao")
	private UserDao dao;
	
	public TUser getUser(String username, String passwords) {
		return dao.getUser(username,passwords);
	}
	
	public TUser findUserByUsername(String username) {
	    return dao.findUserByUsername(username);
	}
}
