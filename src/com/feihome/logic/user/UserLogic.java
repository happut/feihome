package com.feihome.logic.user;

import com.alibaba.fastjson.JSONObject;
import com.feihome.model.TUser;
import com.feihome.support.auth.shiro.MD5Util;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/user")
public class UserLogic {

    @Autowired
    @Qualifier("userService")
    UserService userService;

    @RequestMapping(value = "doLogin", method = RequestMethod.POST)
    @ResponseBody
    public String doLogin(
            @RequestParam(value = "username", required = true) String username,
            @RequestParam(value = "passwords", required = true) String passwords,
            HttpServletRequest request, HttpServletResponse response) {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username,
                MD5Util.md5(passwords));
        JSONObject result = new JSONObject();
        try {
            subject.login(token);
        } catch (UnknownAccountException e) {
            result.put("success", false);
            result.put("message", "未找到该用户！");
            return result.toString();
        } catch (IncorrectCredentialsException e) {
            result.put("success", false);
            result.put("message", "密码错误！");
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


    @RequestMapping(value = "login")
    public ModelAndView login(HttpServletRequest request,
                               HttpServletResponse response) throws Exception {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return new ModelAndView("user/login");
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

    @RequestMapping(value = "detail")
    public String detail(HttpServletRequest request,
            HttpServletResponse response, Model model) throws Exception {
        Subject subject = SecurityUtils.getSubject();
        TUser user = (TUser) subject.getPrincipal();
        request.setAttribute("user", user);
        return "user/detail";
    }
}
