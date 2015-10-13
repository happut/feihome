package com.feihome.logic.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.feihome.model.TUser;
import com.feihome.service.CommonService;

@Controller
@RequestMapping("/user")
public class UserLogic {

	@Autowired
	@Qualifier("userService")
	UserService userService;

	@RequestMapping(value = "login", method = RequestMethod.POST)
	@ResponseBody
	public String login(
			@RequestParam(value = "username", required = true) String username,
			@RequestParam(value = "passwords", required = true) String passwords,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		JSONObject result = new JSONObject();
		TUser user = userService.getUser(username,passwords);
		if(user != null){
			request.getSession().setAttribute("user",user);
		}
		result.put("result", user != null);
		return result.toString();
	}

	@RequestMapping(value = "loginByUUID", method = RequestMethod.POST)
	@ResponseBody
	public String loginByUUID(
			@RequestParam(value = "sercet", required = true) String sercetCode) {
		JSONObject result = new JSONObject();
		System.out.println(2);
		result.put("result", 1);
		return result.toString();
	}

	@RequestMapping(value = "signup")
	public ModelAndView signup(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TUser user = (TUser) request.getSession().getAttribute("user");
		if (user != null) {
			request.getSession().removeAttribute("user");
		}
		return new ModelAndView("user/signup");
	}
	
	@RequestMapping(value = "logOutReq")
	@ResponseBody
	public String logOut(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TUser user = (TUser) request.getSession().getAttribute("user");
		if (user != null) {
			request.getSession().removeAttribute("user");
		}
		JSONObject result = new JSONObject();
		result.put("result", true);
		return result.toString();
	}
}
