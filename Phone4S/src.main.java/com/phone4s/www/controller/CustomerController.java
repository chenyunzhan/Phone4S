package com.phone4s.www.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phone4s.www.model.Customer;
import com.phone4s.www.service.CustomerService;
import com.phone4s.www.utils.RandomValidateCode;

@Controller
public class CustomerController {
	
	@Autowired
    private CustomerService  customerService;
	
	@RequestMapping(value="/customerRegister", method=RequestMethod.POST)
    public @ResponseBody String customerRegister(@RequestBody Customer customer, HttpServletRequest request, HttpServletResponse response) {
		RandomValidateCode randomValidateCode = new RandomValidateCode();
		
		
        randomValidateCode.getRandcode(request, response, false);//输出图片方法
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
        boolean isSaved = customerService.registerCustomer(customer, request.getSession().getAttribute("RANDOMVALIDATECODEKEY").toString(), basePath);
        if(isSaved){
			return "{\"success\":true, \"msg\":\"注册成功\"}";
		}
		return "{'success':false, 'msg':'注册失败'}";
    }
	
	
	@RequestMapping(value="/customerVerifyEmail", method=RequestMethod.POST)
    public @ResponseBody String customerVerifyEmail(HttpServletRequest request) {
		String emailValidateCode = request.getParameter("emailValidateCode");
		String customerEmail = request.getParameter("customerEmail");
		HttpSession session = request.getSession();
		String sessionValidateCode = session.getAttribute("RANDOMVALIDATECODEKEY").toString();
		boolean isVerified = customerService.customerVerifyEmail(emailValidateCode, sessionValidateCode, customerEmail);
		if(isVerified){
			return "{\"success\":true, \"msg\":\"验证通过\"}";
		}
		return "{\"success\":false, \"msg\":\"验证码不正确\"}";
    }

}
