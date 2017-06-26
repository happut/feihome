package com.feihome.logic.blog;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.feihome.model.TBlog;
import com.feihome.model.TUser;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.markdown4j.Markdown4jProcessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
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
        List<TBlog> data = blogService.getBlogs();
        request.setAttribute("data", data);
        request.setAttribute("pageCount", blogService.getBlogsCount());
        return "blog/list";
    }

    @RequestMapping(value = "list/{id}")
    @ResponseBody
    public String list(HttpServletRequest request,
            HttpServletResponse response, @PathVariable Integer id) throws Exception {
        List<TBlog> data = blogService.getBlogs(id);
        return JSON.toJSONString(data, true);
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
        blog.setCTitle(title);
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
        data.setCContent(new Markdown4jProcessor().process(data.getCContent()));
        System.out.println(data.getCContent());
        request.setAttribute("data", data);

        Runtime r = Runtime.getRuntime();
        Process p = r.exec("cmd /k ping 127.0.0.1");
        BufferedInputStream bis = new BufferedInputStream(p.getInputStream());

        int bytesRead = 0;
        byte[] buffer = new byte[1024];

        //从文件中按字节读取内容，到文件尾部时read方法将返回-1
        while ((bytesRead = bis.read(buffer)) != -1) {

            //将读取的字节转为字符串对象
            String chunk = new String(buffer,0, bytesRead);
            System.out.print(chunk);
        }

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
