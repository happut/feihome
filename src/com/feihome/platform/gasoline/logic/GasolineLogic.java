package com.feihome.platform.gasoline.logic;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.feihome.platform.gasoline.service.GasolineService;

@Controller
@RequestMapping("/gasoline")
public class GasolineLogic {

	@Autowired
	@Qualifier("gasolineService")
	private GasolineService gasolineService;
	
	@RequestMapping(value = "list")
	public ModelAndView list(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return new ModelAndView("gasoline/list");
	}
	
	@RequestMapping(value="doLoadChart")
	@ResponseBody
	public JSONObject doLoadChart(){
		JSONObject result = gasolineService.getChartData();
		return result;
	};
}
