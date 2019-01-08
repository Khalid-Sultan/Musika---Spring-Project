package com.teammusika.musika.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller        
public class HomeController {
  
  @GetMapping("/")
  public String login() {
	  return "login";    
  }
  @GetMapping("/admin")
  public String admin() {
	  return "admin";    
  }
  @GetMapping("/home")
  public String home() {
	  return "index";    
  }
}
