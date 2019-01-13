package com.teammusika.musika.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.teammusika.musika.security.User;
import com.teammusika.musika.services.UserService;

@Controller
public class HomeController {
	
	private UserService userService;
	
	@Autowired
	public HomeController(UserService userService) {
		this.userService = userService;
	}
	
	  @GetMapping("/")
	  public String home() {
		 // throw new RuntimeException("Test Exception");
	    return "home";    //Landing page.html 
	  }
//		@ModelAttribute(name="user")
//		public UserDetails user(@AuthenticationPrincipal UserDetails userDetails) {
//			String username = userDetails.getUsername();
//			User user = userService.findUserByUsername(username);
//			return user;
//		}
		
	   
	  
	  @GetMapping("/index")
	  public String index( Model model,@AuthenticationPrincipal UserDetails userDetails) {
			User user = userService.findUserByUsername(userDetails.getUsername());
		  model.addAttribute("user", user);
		  return "index";
	  }
}
