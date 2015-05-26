package com.phone4s.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phone4s.www.model.ShopService;
import com.phone4s.www.service.ShopServiceService;;

@Controller
public class ShopServiceController {
	@Autowired
	private ShopServiceService shopServiceService;
	
	@RequestMapping("/getShopSerivce")
    public @ResponseBody List<ShopService> getShopSerivce(@RequestParam(value="bussinessId", required=false, defaultValue="1") String bussinessId, Model model) {
        List<ShopService> shopServices = this.shopServiceService.getShopSerivceByBussinessId(bussinessId);
        model.addAttribute("shopServices", shopServices);
        return shopServices;
    }
}
