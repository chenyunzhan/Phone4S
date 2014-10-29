package com.phone4s.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phone4s.www.model.GoodsPhone;
import com.phone4s.www.service.GoodsPhoneService;

@Controller
public class GoodsPhoneController {
	
	@Autowired
    private GoodsPhoneService  goodsPhoneService;
	
	@RequestMapping("/getGoodsPhone")
    public @ResponseBody List<GoodsPhone> getGoodsPhone(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        model.addAttribute("name", name);
        List<GoodsPhone> goodsPhones = this.goodsPhoneService.getGoodsPhone();
        model.addAttribute("constomers", goodsPhones);
        return goodsPhones;
    }

}
