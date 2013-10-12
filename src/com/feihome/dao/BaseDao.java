package com.feihome.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.feihome.model.TBlog;

public class BaseDao extends JdbcDaoSupport{

	@SuppressWarnings("unchecked")
	public List<TBlog> getBlogs() {
		return getJdbcTemplate().query("select * from t_blog", new RowMapper() {
			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				TBlog blog = new TBlog();
				blog.setCTitle(rs.getString("C_TITLE"));
				blog.setCContent(rs.getString("C_CONTENT"));
				blog.setDtCreatetime(rs.getDate("DT_CREATETIME"));
				blog.setDtEdittime(rs.getDate("DT_EDITTIME"));
				blog.setNId(rs.getInt("N_ID"));
				blog.setNType(rs.getInt("N_TYPE"));
				blog.setNUserid(rs.getInt("N_USERID"));
				return blog;
			}
		});
	}
}
