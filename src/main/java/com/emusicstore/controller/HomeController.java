package com.emusicstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	
	public String home() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error", required=false)String error
			,@RequestParam(value="logout", required=false)String logout,Model model) {
		
		if(error!=null) {
			model.addAttribute("error","The username or password is incorrect");
		}
		if(logout!=null) {
			model.addAttribute("msg","You hava been logged out successfully");
		}
		return "login";
		
	}
	
}
