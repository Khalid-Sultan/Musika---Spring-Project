package com.teammusika.musika.controllers;

import org.springframework.web.bind.annotation.GetMapping;

public class IndexController {
	  @GetMapping("/")
	  public String home() {
		 // throw new RuntimeException("Test Exception");
	    return "index";    //Landing page.html 
	  }
}
