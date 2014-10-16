package com.feihome.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.lang.BooleanUtils;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.feihome.model.TBlog;
import com.feihome.model.TCodepushRecord;
import com.feihome.model.TUser;

public class BaseDao extends JdbcDaoSupport {

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

	@SuppressWarnings("unchecked")
	public TUser getUser(String username, String passwords) {
		List<TUser> users = getJdbcTemplate()
				.query("select * from t_user where C_USERNAME = ? and C_PASSWORD = ? ",
						new Object[] { username, passwords }, new RowMapper() {
							@Override
							public Object mapRow(ResultSet rs, int arg1)
									throws SQLException {
								TUser user = new TUser();
								user.setNId(rs.getInt("N_ID"));
								user.setCEmail(rs.getString("C_EMAIL"));
								user.setCPassword(rs.getString("C_PASSWORD"));
								user.setCUsername(rs.getString("C_USERNAME"));
								user.setDtCreateTime(rs
										.getDate("DT_CREATE_TIME"));
								return user;
							}
						});
		if (users.isEmpty()) {
			return null;
		} else {
			return users.get(0);
		}
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
	
	
	public boolean createPushRecord(TCodepushRecord r){
		int rows = getJdbcTemplate()
				.update("insert into t_codepush_record(C_PUSH_ID,C_COMMITTER_EMAIL,C_COMMITTER_NAME,C_COMMITTER_SHA,C_COMMITTER_MSG,ref,DT_CREATETIME) VALUE(?,?,?,?,?,?,?)",
						r.getCPushId(), r.getCCommitterEmail(),
						r.getCCommitterName(), r.getCCommitterSha(),
						r.getCCommitterMsg(), r.getDtCreatetime());
		return rows > 0;	
	}
}
