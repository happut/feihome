package com.feihome.logic.blog;

import com.feihome.logic.blog.dao.impl.BlogDao;
import com.feihome.model.TBlog;
import com.feihome.model.TUser;
import com.feihome.support.utils.MarkdownUtils;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BlogService {

    @Autowired
    @Qualifier("blogDao")
    private BlogDao dao;

    public List<TBlog> getBlogs() {
        List<TBlog> blogs = dao.getBlogs();
        handleBlogs(blogs);
        return blogs;
    }

    public TBlog getBlogById(Integer id) {
        return dao.getBlogById(id);
    }

    public List<TBlog> getBlogs(Integer pageNum) {
        List<TBlog> blogs = dao.getBlogs(pageNum);
        handleBlogs(blogs);
        return blogs;
    }

    public boolean createBlog(TBlog blog) {
        return dao.createBlog(blog);
    }

    public boolean editBlog(TBlog blog) {
        return dao.editBlog(blog);
    }

    public List<TUser> getAllUserInfo() {
        return dao.getAllUserInfo();
    }

    public boolean deleteBlog(Integer id) {
        return dao.deleteBlog(id);
    }

    public Integer getBlogsCount() {
        return dao.getBlogsCount();
    }

    public List<TBlog> getRecentBlogs(Integer count) {
        List<TBlog> blogs = dao.getRecentBlogs(count);
        handleBlogs(blogs);
        return blogs;
    }

    public void handleBlogs(List<TBlog> blogs) {
        for (TBlog blog : blogs) {
            String html = MarkdownUtils.parseMarkdown2html(blog.getCContent());
            if (StringUtils.isNotBlank(html)) {
                String text = Jsoup.parse(html).text();
                if (text.length() > 300) {
                    text = text.substring(0, 300) + "...";
                }
                blog.setCContent(text);
            } else {
                blog.setCContent("");
            }
        }
    }
}
