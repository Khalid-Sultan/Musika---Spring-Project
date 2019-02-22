package com.teammusika.musika.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.teammusika.musika.security.User;
import com.teammusika.musika.services.ArtistRepositoryService;
import com.teammusika.musika.services.UserService;

@Controller
public class AddArtistController {
    @Autowired
    private ArtistRepositoryService artistRepositoryService;
	private UserService userService;

	@Autowired
	public AddArtistController(UserService userService) {
		this.userService = userService;
	}

    @GetMapping("/admin/addArtist")
	public String getMapping(Model model, User user, @AuthenticationPrincipal UserDetails userDetails) {
		String username = userDetails.getUsername();
		user = userService.findUserByUsername(username);
		model.addAttribute("user", user);
        return "admin/addArtist";
	}

    @RequestMapping(value = "/admin/addArtist", method=RequestMethod.POST)
    public String processOrder(
        @RequestParam("artistName") String artistFullName,
        @RequestParam("artistPhoto") MultipartFile artistPhoto,
        @RequestParam("artistEmail") String artistEmail) {
        try {
            byte[] artistPhotoBytes = artistPhoto.getBytes();
            artistRepositoryService.storeFile(artistFullName,artistPhotoBytes,artistEmail);
			return "redirect:/admin/admin";
        }
        catch(Exception ex) {
            return "redirect:/ErrorAddArtist";
        }
    }
}

