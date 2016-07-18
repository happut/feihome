package com.feihome.logic.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.feihome.model.TUser;
import com.feihome.support.auth.shiro.MD5Util;

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
            HttpServletRequest request, HttpServletResponse response) throws Exception {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username,
                MD5Util.md5(passwords));
        JSONObject result = new JSONObject();
        try {
            subject.login(token);
        } catch (Exception e) {
            result.put("success", false);
            result.put("message", "验证出错");
            return result.toString();
        }
        result.put("success", true);
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
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
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
