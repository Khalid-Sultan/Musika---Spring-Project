package com.teammusika.musika.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teammusika.musika.security.User;
import com.teammusika.musika.services.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
private UserService userService;
	
	@Autowired
	public AdminController(UserService userService) {
		this.userService = userService;
	}
	

	@RequestMapping(method=RequestMethod.GET)
	public String getMapping(Model model, User user,@AuthenticationPrincipal UserDetails userDetails) {
		String username = userDetails.getUsername();
		user = userService.findUserByUsername(username);
		model.addAttribute("user", user);
		
		return "admin";
	}
}
