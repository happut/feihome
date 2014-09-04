package com.feihome.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.feihome.dao.BaseDao;
import com.feihome.model.TBlog;
import com.feihome.model.TUser;


@Repository("commonService")
public class CommonService {

	@Autowired
	@Qualifier("baseDao")
	private BaseDao dao;

	public List<TBlog> getBlogs() {
		return dao.getBlogs();
	}
	
	public List<TBlog> getBlogs(Integer pageNum) {
		return dao.getBlogs(pageNum);
	}

	public TUser getUser(String username, String passwords) {
		return dao.getUser(username,passwords);
	}

	public boolean createBlog(TBlog blog) {
		return dao.createBlog(blog) ;
	}

	public List<TUser> getAllUserInfo() {
		return dao.getAllUserInfo();
	}

	public boolean deleteBlog(Integer id) {
		return dao.deleteBlog(id);
	}
	
	
}
