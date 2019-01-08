package com.teammusika.musika.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teammusika.musika.Song;
import com.teammusika.musika.repositories.SongRepositrory;

@Controller
@RequestMapping("/song")
public class SongController {

	SongRepositrory songRepository;
	public  SongController(SongRepositrory songRepositry) {
		// TODO Auto-generated constructor stub
		this.songRepository=songRepositry;
	}
	
	@ModelAttribute
	public void addSongsToModel(Model model) {
		List<Song> songs=new ArrayList<>();
		songRepository.findAll().forEach(i->songs.add(i));
		
		model.addAttribute("songModel",songs);
		
		
	}
	
	@GetMapping
	public String showSongs(Model model) {
		return "index";
	}
	@PostMapping
	public void count(Model model) {
		System.out.println("out stream");
	}
}
