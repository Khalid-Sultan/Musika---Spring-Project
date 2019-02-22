package com.teammusika.musika.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.security.User;
import com.teammusika.musika.services.ArtistRepositoryService;
import com.teammusika.musika.services.UserService;

import java.util.*;

@Controller
public class ViewArtistsAdminController {
	class Objected {
		public String photo;
		public Long artistId;
		public String artistFullName;
		public String artistEmail;

		public Objected(String photo, Artist artist) {
			this.photo = photo;
			this.artistId = artist.getArtistId();
			this.artistFullName = artist.getArtistFullName();
			this.artistEmail = artist.getArtistEmail();
		}
	}

	@Autowired
	private ArtistRepositoryService artistRepositoryService;

	@ModelAttribute
	public void addArtistsToModel(Model model) {
		List<Artist> artists = new ArrayList<>();
		List<String> photos = new ArrayList<>();

		List<Artist> artistList = artistRepositoryService.findAll();

		List<Objected> objecteds = new ArrayList<>();
		for (Artist artist : artistList) {
			byte[] image = artist.getArtistPhoto();
			String photo = org.springframework.util.Base64Utils.encodeToString(image);
			artists.add(artist);
			photos.add(photo);
			objecteds.add(new Objected(photo, artist));
		}
		model.addAttribute("allObjects", objecteds);
	}

	private UserService userService;

	@Autowired
	public ViewArtistsAdminController(UserService userService) {
		this.userService = userService;
	}

	@GetMapping("/admin/viewArtists")
	public String getMapping(Model model, User user, @AuthenticationPrincipal UserDetails userDetails) {
		String username = userDetails.getUsername();
		user = userService.findUserByUsername(username);
		model.addAttribute("user", user);
		return "admin/viewArtistsAdmin";
	}
}
