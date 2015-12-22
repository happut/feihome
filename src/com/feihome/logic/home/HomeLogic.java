package com.feihome.logic.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.feihome.logic.blog.BlogService;

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
		logger.info("wangfei");
		return new ModelAndView("home/index");
	}
}
