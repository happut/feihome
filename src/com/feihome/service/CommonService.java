package com.feihome.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.feihome.dao.BaseDao;
import com.feihome.model.TBlog;


@Repository("commonService")
public class CommonService {

	@Autowired
	@Qualifier("baseDao")
	private BaseDao dao;

	public boolean isUser(String user, String pass) {
		String hql = "from TUser u where u.CUsername = ? and CPassword = ?";
		dao.getJdbcTemplate().queryForList("select * from t_blog");
		return false;
	}

	public List<TBlog> getBlogs() {
		return dao.getBlogs();
	}
}