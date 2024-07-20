package com.courseproject.firstspringproj.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class HelloContainer {
	
	@RequestMapping("say-hello")
	@ResponseBody
	public String sayHello() {
		return "Hello...!!! What is it that you wanna learn today...???";
	}
	
	@RequestMapping("say-hello-jsp")
	public String sayHelloJsp() {
		return "sayHello";
	}
	
	@RequestMapping("say-hello-html")
	@ResponseBody
	public String sayHelloHtml() {
		StringBuffer strbfr=new StringBuffer();
		strbfr.append("<html>");
		strbfr.append("<head>");
		strbfr.append("<title>HTML Response</title>");
		strbfr.append("</head>");
		strbfr.append("<body>");
		strbfr.append("My HTML Response</body>");
		strbfr.append("</html>");
		return strbfr.toString();
	}

}
