package com.feihome.logic.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/control")
public class ControlCenterLogic {

    @RequestMapping(value = "index")
    public String index(HttpServletRequest request,
            HttpServletResponse response, Model model) throws Exception {
        model.addAttribute("test", "wangfei");
        request.setAttribute("test2", "wangfei");
        return "control/controlCenter";
    }
    
}
