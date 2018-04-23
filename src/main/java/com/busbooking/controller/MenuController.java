package com.busbooking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MenuController {
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(){
		return "index";
	}
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index(){
		return "index";
	}

}
