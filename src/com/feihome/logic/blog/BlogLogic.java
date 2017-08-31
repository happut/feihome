package com.feihome.logic.blog;

import com.alibaba.fastjson.JSONObject;
import com.feihome.model.TBlog;
import com.feihome.model.TUser;
import com.feihome.support.utils.MarkdownUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;
import java.util.List;

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
    public String list(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<TBlog> data = blogService.getBlogs(1);
        request.setAttribute("data", data);
        Integer pageCount = blogService.getBlogsCount();
        request.setAttribute("pageCount", pageCount);

        int maxPage = (pageCount - 1) / 10 + 1;
        request.setAttribute("prePage", 1);
        request.setAttribute("curPage", 1);
        request.setAttribute("nextPage", NumberUtils.min(new int[]{maxPage, 2}));

        return "blog/list";
    }

    @RequestMapping(value = "list/{id}")
    public String list(HttpServletRequest request,
                       HttpServletResponse response, @PathVariable Integer id) throws Exception {
        List<TBlog> data = blogService.getBlogs(id);
        request.setAttribute("data", data);
        Integer pageCount = blogService.getBlogsCount();
        request.setAttribute("pageCount", pageCount);

        int maxPage = (pageCount - 1) / 10 + 1;
        request.setAttribute("prePage", NumberUtils.max(new int[]{1, id - 1}));
        request.setAttribute("curPage", id);
        request.setAttribute("nextPage", NumberUtils.min(new int[]{maxPage, id + 1}));
        return "blog/list";
    }

    @RequestMapping(value = "addBlog")
    public ModelAndView addBlog(HttpServletRequest request,
                                HttpServletResponse response) throws Exception {
        return new ModelAndView("blog/addBlog");
    }

    @RequestMapping(value = "editBlogReq", method = RequestMethod.POST)
    @ResponseBody
    public String editBlogReq(
            @RequestParam(value = "title", required = true) String title,
            @RequestParam(value = "content", required = true) String content,
            @RequestParam(value = "summary", required = true) String summary,
            @RequestParam(value = "blogId") String id,
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        JSONObject result = new JSONObject();
        Subject subject = SecurityUtils.getSubject();
        TUser user = (TUser) subject.getPrincipal();
        TBlog blog = new TBlog();
        blog.setCContent(content);
        blog.setCTitle(title);//test asdfasd
        blog.setCSummary(summary);
        blog.setDtCreatetime(new Timestamp(System.currentTimeMillis()));
        blog.setDtEdittime(new Timestamp(System.currentTimeMillis()));
        blog.setNType(0);
        blog.setNUserid(user.getNId());

        boolean isSuccess = false;
        if (StringUtils.isBlank(id)) {
            isSuccess = blogService.createBlog(blog);
        } else {
            blog.setNId(NumberUtils.toInt(id));
            isSuccess = blogService.editBlog(blog);
        }
        result.put("result", isSuccess);
        result.put("title", blog.getCTitle());

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


        data.setCContent(MarkdownUtils.parseMarkdown2html(data.getCContent()));
//        System.out.println(data.getCContent());
        request.setAttribute("data", data);
        return "blog/p";
    }

    @RequestMapping(value = "edit/{id}")
    public String edit(HttpServletRequest request,
                       HttpServletResponse response, @PathVariable Integer id) throws Exception {
        TBlog data = blogService.getBlogById(id);
        request.setAttribute("data", data);
        return "blog/addBlog";
    }

    @RequestMapping(value = "delete/{id}")
    public String delete(HttpServletRequest request,
                         HttpServletResponse response, @PathVariable Integer id) throws Exception {
        blogService.deleteBlog(id);
        return "redirect:/blog/list";
    }
}
