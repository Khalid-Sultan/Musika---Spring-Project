package com.teammusika.musika.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.teammusika.musika.security.User;
import com.teammusika.musika.services.UserService;

@Controller
public class LoginController {

	@GetMapping("/login")
	public String login() {
		return "login";
	}

}
