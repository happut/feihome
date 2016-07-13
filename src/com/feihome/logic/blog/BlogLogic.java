package com.feihome.logic.blog;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.feihome.model.TBlog;
import com.feihome.model.TUser;

@Controller
@RequestMapping("/blog")
public class BlogLogic {

    @Autowired
    @Qualifier("blogService")
    private BlogService blogService;

    @RequestMapping(value = "loadBlog")
    @ResponseBody
    public List<TBlog> loadBlog(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        List<TBlog> data = blogService.getBlogs();
        return data;
    }

    @RequestMapping(value = "list")
    public ModelAndView list(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        // request.getSession().setAttribute("user", user);
        // request.getSession().removeAttribute("user");
        List<TBlog> data = blogService.getBlogs();
        return new ModelAndView("blog/list", "data", data);
    }

    @RequestMapping(value = "addBlog")
    public ModelAndView addBlog(HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        return new ModelAndView("blog/addBlog");
    }

    @RequestMapping(value = "addBlogReq", method = RequestMethod.POST)
    @ResponseBody
    public String addBlogReq(
            @RequestParam(value = "title", required = true) String title,
            @RequestParam(value = "content", required = true) String content,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        JSONObject result = new JSONObject();
        TUser user = (TUser) request.getSession().getAttribute("user");
        if (user == null) {
            throw new Exception("session中未保存user信息");
        }
        TBlog blog = new TBlog();
        blog.setCContent(content);
        blog.setCTitle(title);
        blog.setDtCreatetime(new Timestamp(System.currentTimeMillis()));
        blog.setDtEdittime(new Timestamp(System.currentTimeMillis()));
        blog.setNType(0);
        blog.setNUserid(user.getNId());

        boolean isSuccess = blogService.createBlog(blog);
        result.put("result", isSuccess);

        return result.toString();
    }

    @RequestMapping(value = "deteleBlogReq", method = RequestMethod.POST)
    @ResponseBody
    public String deleteBlogReq(
            @RequestParam(value = "id", required = true) Integer id,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        JSONObject result = new JSONObject();
        boolean isSuccess = blogService.deleteBlog(id);
        result.put("result", isSuccess);
        return result.toString();
    }

    @RequestMapping(value = "p/{id}")
    public String article(HttpServletRequest request,
            HttpServletResponse response, @PathVariable Integer id) throws Exception {
        TBlog data = blogService.getBlogById(id);
        request.setAttribute("data", data);
        return "blog/p";
    }
}
