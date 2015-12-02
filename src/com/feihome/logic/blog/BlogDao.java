package com.feihome.logic.blog;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.lang3.BooleanUtils;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.feihome.dao.BaseDao;
import com.feihome.model.TBlog;
import com.feihome.model.TCodepushRecord;
import com.feihome.model.TUser;

@Repository
public class BlogDao extends BaseDao{
	public List<TBlog> getBlogs() {
		String sql = " select b.*,u.N_ID as USERID,u.C_USERNAME as USERNAME"
				+ " from t_blog b ,t_user u"
				+ " where b.N_USERID = u.N_ID order by b.DT_EDITTIME desc";
		return getJdbcTemplate().query(sql, new RowMapper<TBlog>() {
			@Override
			public TBlog mapRow(ResultSet rs, int row) throws SQLException {
				TBlog blog = new TBlog();
				blog.setCTitle(rs.getString("C_TITLE"));
				blog.setCContent(rs.getString("C_CONTENT"));
				blog.setDtCreatetime(rs.getTimestamp("DT_CREATETIME"));
				blog.setDtEdittime(rs.getTimestamp("DT_EDITTIME"));
				blog.setNId(rs.getInt("N_ID"));
				blog.setNType(rs.getInt("N_TYPE"));
				blog.setNUserid(rs.getInt("N_USERID"));
				blog.getUser().setCUsername(rs.getString("USERNAME"));
				return blog;
			}
		});

	}

	public List<TBlog> getBlogs(Integer pageNum) {
		String sql = " select b.*,u.N_ID as USERID,u.C_USERNAME as USERNAME"
				+ " from t_blog b ,t_user u"
				+ " where b.N_USERID = u.N_ID order by b.DT_EDITTIME desc"
				+ " LIMIT " + (pageNum - 1) + ",10";
		return getJdbcTemplate().query(sql, new RowMapper<TBlog>() {
			@Override
			public TBlog mapRow(ResultSet rs, int arg1) throws SQLException {
				TBlog blog = new TBlog();
				blog.setCTitle(rs.getString("C_TITLE"));
				blog.setCContent(rs.getString("C_CONTENT"));
				blog.setDtCreatetime(rs.getTimestamp("DT_CREATETIME"));
				blog.setDtEdittime(rs.getTimestamp("DT_EDITTIME"));
				blog.setNId(rs.getInt("N_ID"));
				blog.setNType(rs.getInt("N_TYPE"));
				blog.setNUserid(rs.getInt("N_USERID"));
				blog.getUser().setCUsername(rs.getString("USERNAME"));
				return blog;
			}
		});

	}

	

	public boolean createBlog(TBlog blog) {
		int rows = getJdbcTemplate()
				.update("insert into t_blog(C_TITLE,C_CONTENT,DT_CREATETIME,DT_EDITTIME,N_TYPE,N_USERID) VALUE(?,?,?,?,?,?)",
						blog.getCTitle(), blog.getCContent(),
						blog.getDtCreatetime(), blog.getDtEdittime(),
						blog.getNType(), blog.getNUserid());
		return rows > 0;
	}

	public List<TUser> getAllUserInfo() {
		return getJdbcTemplate().query("select * from t_user", new RowMapper() {
			@Override
			public Object mapRow(ResultSet rs, int arg1) throws SQLException {
				TUser user = new TUser();
				user.setNId(rs.getInt("N_ID"));
				user.setCEmail(rs.getString("C_EMAIL"));
				user.setCPassword(rs.getString("C_PASSWORD"));
				user.setCUsername(rs.getString("C_USERNAME"));
				user.setDtCreateTime(rs.getDate("DT_CREATE_TIME"));
				return user;
			}
		});
	}

	@Transactional
	public boolean deleteBlog(Integer id) {
		return BooleanUtils.toBoolean(getJdbcTemplate().update(
				"delete from t_blog WHERE N_ID = ?", id));
	}
}
