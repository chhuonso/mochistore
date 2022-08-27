package com.sonny.mochistore.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sonny.mochistore.models.LoginUser;
import com.sonny.mochistore.models.Mochi;
import com.sonny.mochistore.models.User;
import com.sonny.mochistore.services.MochiService;
import com.sonny.mochistore.services.UserService;


@Controller
public class RegLoginController {

	
	@Autowired
	UserService userServ;
	@Autowired
	MochiService mochiServ;
	

	@GetMapping("/userLogin")
	public String loginPage(Model model, HttpSession session) {
		//clear session
		session.invalidate();
		
		model.addAttribute("newUser", new User());
		model.addAttribute("loginUser", new LoginUser());
		
		return "regLogin.jsp";
	}
	
	
	@GetMapping("/userDisplay")
	public String UserDisplayPage(Model model, HttpSession session) {
			// check if there is a user in session
			// we don't want this page to render if there is no user in session
			if(session.getAttribute("session_user_id") == null) {
				return "redirect:/this";
			}
			
			List<Mochi> allMochi = mochiServ.allMochi();
			model.addAttribute("allMochi", allMochi);
			
			Long userID = (Long) session.getAttribute("session_user_id");
			User user = userServ.findUser(userID);
			
			// for enhanced security, only add what is needed
			// don't add the entire user object because that'll send the password
			model.addAttribute("userName", user.getUserName());
		return "userDisplay.jsp";
	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
//		Exectue the Service to Register FIRST  to userService
		User user = userServ.register(newUser, result);
		
		if(result.hasErrors()) {
			model.addAttribute("loginUser", new LoginUser());
			return "regLogin.jsp";
		} else {
			session.setAttribute("session_user_id", user.getId());
			return "redirect:/userDisplay";
		}
	}
	
	
	
	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("loginUser") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		User user = userServ.login(newLogin, result);
		
		if(result.hasErrors() || user == null) {
			// re-render login/reg page if any errors
			model.addAttribute("newUser", new User());
			return "regLogin.jsp";
		} else {
			session.setAttribute("session_user_id", user.getId()); // add user to session
			return "redirect:/userDisplay";
		}
	}
	
	
	
	
}
