package com.feihome.logic.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.feihome.dao.BaseDao;
import com.feihome.model.TUser;

@Repository
public class UserDao extends BaseDao{
	
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
}
