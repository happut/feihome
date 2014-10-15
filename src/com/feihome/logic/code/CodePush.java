package com.feihome.logic.code;

import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.feihome.model.TBlog;
import com.feihome.service.CommonService;

@Controller
@RequestMapping("/codePush")
public class CodePush {

	@Autowired
	@Qualifier("commonService")
	CommonService commonService;

	@RequestMapping(value = "push")
	@ResponseBody
	public String push(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TBlog blog = new TBlog();
		blog.setCContent(request.getParameter("token"));
		blog.setCContent(request.getParameter("token"));
		blog.setCTitle(request.getParameter("token"));
		blog.setDtCreatetime(new Timestamp(System.currentTimeMillis()));
		blog.setDtEdittime(new Timestamp(System.currentTimeMillis()));
		blog.setNType(0);
		blog.setNUserid(1);
		commonService.createBlog(blog);
		return "success";
	}
}
