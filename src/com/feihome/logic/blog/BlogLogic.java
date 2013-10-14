package com.feihome.logic.blog;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.feihome.model.TBlog;
import com.feihome.model.TUser;
import com.feihome.service.CommonService;

@Controller
@RequestMapping("/blog")
public class BlogLogic {

	@Autowired
	@Qualifier("commonService")
	CommonService commonService;

	@RequestMapping(value = "list")
	public ModelAndView list(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TUser user = new TUser();
		user.setCUsername("wangfei");
//		request.getSession().setAttribute("user", user);
//		request.getSession().removeAttribute("user");
        List<TBlog> data = commonService.getBlogs();
        
        return new ModelAndView("blog/list","data",data);  
	}
}