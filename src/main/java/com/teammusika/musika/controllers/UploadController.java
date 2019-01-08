package com.teammusika.musika.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.services.ArtistRepositoryService;
import com.teammusika.musika.services.SongRepositoryService;
@Controller
@RequestMapping("/admin/uploadSong")
public class UploadController {
	@Autowired
	private SongRepositoryService songRepositoryService;
	@Autowired
	private ArtistRepositoryService artistRepositoryService;

	@GetMapping
	public String uploadForm() {
		return "uploadForm";
	}

	@ModelAttribute
	public void addIngredientsToModel(Model model) {
		List<Artist> artists = new ArrayList<>();
		artistRepositoryService.findAll().forEach(i->artists.add(i));
        model.addAttribute("art",artists);
	}

	@PostMapping
	public String processOrder(
			@RequestParam("songFile") MultipartFile song,
			@RequestParam("coverFile") MultipartFile coverFile, 
			@RequestParam("songTitle") String title,
			@RequestParam("songArtist") String artistName,
			@RequestParam("songAlbum") String albumName) {
		try {
			byte[] songFileBytes = song.getBytes();
			byte[] songCoverBytes = coverFile.getBytes();
			String[] artists  = artistName.split(",");
            ArrayList<String> artistNames = new ArrayList<>();
            for (String s: artists) {
                artistNames.add(s);
            }
			Song savedSong = songRepositoryService.storeFile(songFileBytes,artistNames,albumName,title,songCoverBytes);
			if(savedSong==null) return "redirect:/ErrorInvalidArtist";
			return "redirect:/admin";
		}
		catch(IOException ex) {
			return "redirect:/ErrorUploadSong";
		}
	}

}
