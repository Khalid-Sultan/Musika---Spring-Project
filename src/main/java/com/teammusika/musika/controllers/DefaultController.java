package com.teammusika.musika.controllers;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {
	@RequestMapping("/default")
	public String DefaultAfterLogin(@AuthenticationPrincipal UserDetails userDetails) {
		if(userDetails.getAuthorities().toString().equals("[MUSIKAADMIN]")) {
			return "redirect:/admin/admin";
		}
//		else if(userDetails.getAuthorities().toString().equals("[MUSIKAUSER]")) {
			return "redirect:/user/home";
//		}
//		return "redirect:/";
	}
}
