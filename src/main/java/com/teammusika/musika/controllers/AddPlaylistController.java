package com.teammusika.musika.controllers;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.teammusika.musika.domains.SongObject;
import com.teammusika.musika.domains.Playlist;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.repositories.PlaylistRepository;
import com.teammusika.musika.repositories.SongRepository;
import com.teammusika.musika.security.User;
import com.teammusika.musika.services.PlaylistRepositoryService;
import com.teammusika.musika.services.SongRepositoryService;
import com.teammusika.musika.services.UserService;

@Controller
@RequestMapping("user/addPlaylist")
public class AddPlaylistController {

	private SongRepositoryService songRepositoryService;
	private PlaylistRepositoryService playListRepositoryService;
	private UserService userService;
	private User currentUser;

	@Autowired
	public AddPlaylistController(UserService userService, SongRepositoryService songRepositoryService,PlaylistRepositoryService playlistRepositoryService) {
		this.songRepositoryService = songRepositoryService;
		this.userService = userService;
		this.playListRepositoryService = playlistRepositoryService;
	}

	@ModelAttribute
	public void addSongsToModel(Model model) {
		List<SongObject> objecteds = new ArrayList<>();
		List<Song> songsList = songRepositoryService.findAll();
		System.out.println("11111111111111111");
		for (Song song : songsList) {
			byte[] file = song.getSongFile();
			String file_string = org.springframework.util.Base64Utils.encodeToString(file);
			byte[] image = song.getSongCover();
			String image_string = org.springframework.util.Base64Utils.encodeToString(image);
			objecteds.add(new SongObject(file_string, image_string, song));
			System.out.println(song.getSongTitle());
		}
		model.addAttribute("songModel", objecteds);
	}
	@GetMapping 
	public String getMapping(Model model, User user, @AuthenticationPrincipal UserDetails userDetails) {
		String username = userDetails.getUsername();
		user = userService.findUserByUsername(username);
		this.currentUser = user;
		model.addAttribute("user", user);

		return "user/addPlaylist";
	}  
	@ModelAttribute("playlistDesign")
	public void generateInitialPlaylist(Model model) {
		Playlist playlistDesign = new Playlist();
		playlistDesign.setUser(currentUser);
		model.addAttribute("playlistDesign",playlistDesign);		
	}
	@PostMapping 
	public ModelAndView addPlaylist(@Valid @ModelAttribute("playlistDesign") Playlist myPlaylist, Errors errors) {		
		if (errors.hasErrors()) {
			System.out.println("in");
			ModelAndView mov = new ModelAndView("user/addPlaylist");
			return mov.addObject("user",this.currentUser);
		}
//		myPlaylist.setUser(this.currentUser);
		System.out.println("out");
		Playlist savedTaco = playListRepositoryService.save(myPlaylist);
		ModelAndView mov = new ModelAndView("redirect:/user/playlist");
		return mov;

	}
}
