package cn.javass.chapter2.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/userController")
public class HelloWorldController {

	private Log log = LogFactory.getLog(HelloWorldController.class);

	// 定义访问路径hello.do 请求方法类型
	@RequestMapping(params = "login")
	@ResponseBody
	public String login() {
		log.debug("HelloWorld!" + "已经执行");
		return "test/hello";
	}
	
	@RequestMapping(value="hello")
	@ResponseBody
	public String helloWorld() {
		log.debug("HelloWorld!" + "已经执行");
		return "test/helloasdfadsf";
	}
	
	
}