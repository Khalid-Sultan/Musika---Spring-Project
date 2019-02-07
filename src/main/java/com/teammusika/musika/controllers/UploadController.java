package com.teammusika.musika.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.security.User;
import com.teammusika.musika.services.ArtistRepositoryService;
import com.teammusika.musika.services.SongRepositoryService;
import com.teammusika.musika.services.UserService;

@Controller
public class UploadController {
	@Autowired
	private SongRepositoryService songRepositoryService;
	@Autowired
	private ArtistRepositoryService artistRepositoryService;
	@Autowired
	private UserService userService;

	@GetMapping("/admin/uploadSong")
	public String uploadForm(Model model, User user,@AuthenticationPrincipal UserDetails userDetails) {
		
		String username = userDetails.getUsername();
		user = userService.findUserByUsername(username);
		model.addAttribute("user", user);
		return "admin/uploadSong";
	}

	@ModelAttribute
	public void addIngredientsToModel(Model model) {
		List<Artist> artists = new ArrayList<>();
		artistRepositoryService.findAll().forEach(i->artists.add(i));
        model.addAttribute("art",artists);
	}

    @RequestMapping(value = "/admin/uploadSongs", method=RequestMethod.POST)
    public String processOrder(
			@RequestParam("songFile") MultipartFile song,
			@RequestParam("coverFile") MultipartFile coverFile, 
			@RequestParam("songArtist") String artistName,
			@RequestParam("songAlbum") String albumName) {
		try {
			byte[] songFileBytes = song.getBytes();
			String title=song.getOriginalFilename();
			String songTitle=title.substring(0,title.indexOf('.'));
			byte[] songCoverBytes = coverFile.getBytes();
			String[] artists  = artistName.split(",");
            ArrayList<String> artistNames = new ArrayList<>();
            for (String s: artists) {
                artistNames.add(s);
            }
			Song savedSong = songRepositoryService.storeFile(songFileBytes,artistNames,albumName,songTitle,songCoverBytes);
			if(savedSong==null) return "redirect:/ErrorInvalidArtist";
			return "redirect:/admin/admin";
		}
		catch(IOException ex) {
			return "redirect:/ErrorUploadSong";
		}
	}

}
