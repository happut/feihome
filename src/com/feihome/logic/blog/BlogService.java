package com.feihome.logic.blog;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.feihome.logic.blog.dao.impl.BlogDao;
import com.feihome.model.TBlog;
import com.feihome.model.TUser;

@Repository
public class BlogService {
	
	@Autowired
	@Qualifier("blogDao")
	private BlogDao dao;

	public List<TBlog> getBlogs() {
		return dao.getBlogs();
	}

	public TBlog getBlogById(Integer id) {
	    return dao.getBlogById(id);
	}
	
	public List<TBlog> getBlogs(Integer pageNum) {
		return dao.getBlogs(pageNum);
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
