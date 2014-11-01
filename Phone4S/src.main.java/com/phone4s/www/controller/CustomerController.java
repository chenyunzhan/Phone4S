package com.phone4s.www.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phone4s.www.model.Customer;
import com.phone4s.www.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
    private CustomerService  customerService;
	
	@RequestMapping(value="/customerRegister", method=RequestMethod.POST)
    public @ResponseBody String getGoodsPhone(@RequestBody Customer customer) {
		boolean isSaved = customerService.saveCustomer(customer);
		if(isSaved){
			return "{\"success\":true, \"msg\":\"×¢²á³É¹¦\"}";
		}
		return "{'success':false, 'msg':'×¢²áÊ§°Ü'}";
    }

}
