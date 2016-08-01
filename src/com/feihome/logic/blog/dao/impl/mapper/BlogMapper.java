package com.feihome.logic.blog.dao.impl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.feihome.model.TBlog;

/**
 * BlogMapper 博客MyBatis的接口类
 * 
 * @author wfei
 * @version 1.0
 * 
 */
public interface BlogMapper {
	/**
	 * 一次获取所有日志
	 * 
	 * @return
	 */
	public List<TBlog> getBlogs();

	/**
	 * 一次获取所有日志
	 * 
	 * @return
	 */
	public List<TBlog> getPagableBlogs(@Param("page") int page,
			@Param("count") int count);
	
	
	public void createBlog(TBlog blog);

    /**
     * @param id
     * @return
     * @author wfei
     * @time 2016-7-13下午6:19:48
     */
    public List<TBlog> getBlogById(Integer id);
    
    public Integer getBlogsCount();
}
