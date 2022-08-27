package com.sonny.mochistore.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.sonny.mochistore.services.UserService;

@Controller
public class MainController {
	


	@Autowired
	private UserService userServ;
	
	
	@GetMapping("/")
	public String mainPage(Model model, HttpSession session) {

		
		return "mochi.jsp";
	}
	
	
	
	
	@GetMapping("/home")
	public String regLoginPage(Model model, HttpSession session) {

		
		return "mochi.jsp";
	}
	
	
	@GetMapping("/menu")
	public String menuPage(Model model, HttpSession session) {
		
		
		return "menu.jsp";
	}
	
	
	@GetMapping("/location")
	public String locationPage(Model model, HttpSession session) {

		
		return "location.jsp";
	}
}
