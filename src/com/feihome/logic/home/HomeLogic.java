package com.feihome.logic.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.feihome.logic.blog.BlogService;

@Controller
@RequestMapping("/home")
public class HomeLogic {

	@Autowired
	@Qualifier("blogService")
	private BlogService blogService;

	@RequestMapping(value = "index")
	public ModelAndView list(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return new ModelAndView("home/index");
	}

}
