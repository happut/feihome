package com.feihome.logic.blog.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.lang3.BooleanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.feihome.dao.BaseDao;
import com.feihome.logic.blog.dao.impl.mapper.BlogMapper;
import com.feihome.model.TBlog;
import com.feihome.model.TUser;

@Repository
public class BlogDao extends BaseDao {

    @Autowired
    private BlogMapper blogMapper;

    public List<TBlog> getBlogs() {
        return blogMapper.getBlogs();
    }

    public List<TBlog> getBlogs(Integer pageNum) {
        return blogMapper.getPagableBlogs(pageNum - 1, 10);
    }

    public boolean createBlog(TBlog blog) {
        //		int rows = getJdbcTemplate()
        //				.update("insert into t_blog(C_TITLE,C_CONTENT,DT_CREATETIME,DT_EDITTIME,N_TYPE,N_USERID) VALUE(?,?,?,?,?,?)",
        //						blog.getCTitle(), blog.getCContent(),
        //						blog.getDtCreatetime(), blog.getDtEdittime(),
        //						blog.getNType(), blog.getNUserid());
        //		return rows > 0;
        blogMapper.createBlog(blog);
        return true;
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

    /**
     * @param id
     * @return
     * @author wfei
     * @time 2016-7-13下午6:18:53
     */
    public TBlog getBlogById(Integer id) {
        List<TBlog> blogById = blogMapper.getBlogById(id);
        return blogById.size() > 0 ? blogById.get(0) : null;
    }

    /**
     * @return
     * @author wfei
     * @time 2016-7-29下午5:44:36
     */
    public Integer getBlogsCount() {
        return blogMapper.getBlogsCount();
    }
}
