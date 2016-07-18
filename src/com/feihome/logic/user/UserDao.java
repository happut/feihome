package com.feihome.logic.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.feihome.dao.BaseDao;
import com.feihome.logic.user.dao.impl.mapper.UserMapper;
import com.feihome.model.TUser;

@Repository
public class UserDao extends BaseDao {

    @Autowired
    private UserMapper userMapper;

    @SuppressWarnings("unchecked")
    public TUser getUser(String username, String passwords) {
        List<TUser> users = getJdbcTemplate().query(
            "select * from t_user where C_USERNAME = ? and C_PASSWORD = ? ",
            new Object[] { username, passwords }, new RowMapper() {
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
        if (users.isEmpty()) {
            return null;
        } else {
            return users.get(0);
        }
    }

    /**
     * @param username
     * @return
     * @author wfei
     * @time 2016-7-18上午11:13:54
     */
    public TUser findUserByUsername(String username) {
        List<TUser> users = userMapper.findUserByUsername(username);
        return users.size() > 0 ? users.get(0) : null;
    }
}
