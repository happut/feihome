package com.feihome.logic.home;

import com.feihome.logic.blog.BlogService;
import com.feihome.model.TBlog;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/home")
public class HomeLogic {

    Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    @Qualifier("blogService")
    private BlogService blogService;

    @RequestMapping(value = "index")
    public ModelAndView list(HttpServletRequest request,
                             HttpServletResponse response) throws Exception {
        Map<String, Object> data = new HashMap<String, Object>();

        List<TBlog> blogs = blogService.getRecentBlogs(5);
        data.put("blogs", blogs);
        return new ModelAndView("home/index", data);
    }

    @RequestMapping(value = "aboutMe")
    public ModelAndView aboutMe(HttpServletRequest request,
                                HttpServletResponse response) throws Exception {
        return new ModelAndView("home/aboutMe");
    }
}
