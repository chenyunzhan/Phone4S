package com.phone4s.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.phone4s.www.model.RepairBussiness;
import com.phone4s.www.service.RepairBussinessService;

@Controller
public class RepairBussinessController {

	@Autowired
	private RepairBussinessService repairBussinessService;
	
	@RequestMapping("/getTopRepairBussiness")
    public @ResponseBody List<RepairBussiness> getGoodsPhone(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) {
        model.addAttribute("name", name);
        List<RepairBussiness> topRepairBussiness = this.repairBussinessService.getTopRepairBussiness();
        model.addAttribute("topRepairBussiness", topRepairBussiness);
        return topRepairBussiness;
    }
}
