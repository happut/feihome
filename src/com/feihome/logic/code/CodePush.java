package com.feihome.logic.code;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.feihome.model.TBlog;
import com.feihome.service.CommonService;

@Controller
@RequestMapping("/codePush")
public class CodePush {
	
	@Autowired
	@Qualifier("commonService")
	CommonService commonService;

	@RequestMapping(value = "push", method = RequestMethod.POST)
	@ResponseBody
	public String push(
			@RequestParam(value = "token", required = true) String token,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		TBlog b = new TBlog();
		b.setCTitle(token);
		commonService.createBlog(b);
		return null;
	}
}
