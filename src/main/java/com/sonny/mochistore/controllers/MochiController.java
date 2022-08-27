package com.sonny.mochistore.controllers;




import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.sonny.mochistore.models.Mochi;
import com.sonny.mochistore.models.User;
import com.sonny.mochistore.services.MochiService;
import com.sonny.mochistore.services.UserService;


@Controller
public class MochiController {
	@Autowired
	private MochiService mochiServ;

	@Autowired
	private UserService userServ;

	@GetMapping("/mochi/create")
	public String newMochiForm(@ModelAttribute("newMochi") Mochi mochi,
			HttpSession session) {
		return "createMochi.jsp";
	}

	@PostMapping("/mochi/create")
	public String createNewMochi(@Valid @ModelAttribute("newMochi") Mochi mochi,
			BindingResult result, Model model,
			HttpSession session) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if (session.getAttribute("session_user_id") == null) {
			System.out.println("******************************didnt works");
			return "redirect:/userDisplay";
			
		}

		if (result.hasErrors()) {
			return "createMochi.jsp";
		} else {
			Long userID = (Long) session.getAttribute("session_user_id");
			User creator = userServ.findUser(userID);

			mochi.setUser(creator);
			mochiServ.createMochi(mochi);

			System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%its  works");
			return "redirect:/userDisplay";
		}
	}
	
	
//	Show One

	@GetMapping("/mochi/{id}")
	public String oneMochi(@PathVariable("id") Long id,
			HttpSession session, Model model) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if (session.getAttribute("session_user_id") == null) {
			return "redirect:/loginUser";
		}

		Mochi oneMochi = mochiServ.findMochi(id);
		model.addAttribute("oneMochi", oneMochi);

		return "oneMochi.jsp";
	}

	@GetMapping("/mochi/{id}/edit")
	public String editMochi(@PathVariable("id") Long id,
			HttpSession session, Model model) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if (session.getAttribute("session_user_id") == null) {
			return "redirect:/userLogin";
		}

		Mochi mochiEdit = mochiServ.findMochi(id);
		model.addAttribute("mochiEdit", mochiEdit);

		return "editMochi.jsp";
	}

	@PostMapping("/mochi/{id}/edit")
	public String updateMochi(@Valid @ModelAttribute("mochiEdit") Mochi mochi,
			BindingResult result, HttpSession session) {
		// check if there is a user in session
		// we don't want this page to render if there is no user in session
		if (session.getAttribute("session_user_id") == null) {
			return "redirect:/loginUser";
		}
		
		if(result.hasErrors()) {
			return "editMochi.jsp";
		} else {
			Long userID = (Long) session.getAttribute("session_user_id");
			User creator = userServ.findUser(userID);

			mochi.setUser(creator);
			mochiServ.updateMochi(mochi);
			return "redirect:/userDisplay";
		}
		
	}
	
	
//	Delete
	@DeleteMapping("/mochi/{id}/edit")
	public String deleteEditMochi(@PathVariable("id") Long id) {
		mochiServ.deleteMochi(id);
		return "redirect:/userDisplay";
	}
	
	

	

}
