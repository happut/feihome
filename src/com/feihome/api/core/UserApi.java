package com.feihome.api.core;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

@Controller
@RequestMapping("/api/user")
public class UserApi {
	
	private Log log = LogFactory.getLog(UserApi.class);
	
	@RequestMapping(value="login")
	@ResponseBody
	public String helloWorld() {
		log.debug("HelloWorld!" + "已经执行");
		JSONObject json = new JSONObject();
		json.put("user", "wangfei");
		return json.toString();
	}
	

}
