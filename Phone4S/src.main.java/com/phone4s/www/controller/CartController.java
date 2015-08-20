package com.phone4s.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phone4s.www.model.CommunityCart;
import com.phone4s.www.service.CartService;

@Controller
public class CartController {
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/getTopCommunityCarts")
    public @ResponseBody List<CommunityCart> getGoodsPhone(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        model.addAttribute("name", name);
        List<CommunityCart> topRepairBussiness = this.cartService.getTopCommunityCarts();
        model.addAttribute("topRepairBussiness", topRepairBussiness);
        return topRepairBussiness;
    }
}
