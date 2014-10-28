package com.phone4s.www;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GreetingController {
	
    @RequestMapping("/greeting")
    public String greeting(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        model.addAttribute("name", name);
        ApplicationContext act = new FileSystemXmlApplicationContext("C:/Users/CLOUD/git/Phone4S/Phone4S/WebContent/WEB-INF/applicationContext.xml");
        TestJDBC testJDBC = (TestJDBC) act.getBean("testJDBC");
        testJDBC.testJDBC();
        return "test";
    }

}