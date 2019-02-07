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

import com.teammusika.musika.domains.SongObject;
import com.teammusika.musika.domains.Playlist;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.repositories.PlaylistRepository;
import com.teammusika.musika.repositories.SongRepository;
import com.teammusika.musika.security.User;
import com.teammusika.musika.services.SongRepositoryService;
import com.teammusika.musika.services.UserService;

@Controller
@RequestMapping("user/addPlaylist")
public class AddPlaylistController {
	
	
   // private IngredientRepository ingredientRepository;
	private SongRepository songRepository;
	private PlaylistRepository playListRepository;
	private UserService userService;
	
	@Autowired
	public  AddPlaylistController(UserService userService,SongRepository songRepository,PlaylistRepository playlistRepository) 
	{
		this.songRepository=songRepository;
		this.userService=userService;
		this.playListRepository=playlistRepository;
	}

    @Autowired
	private SongRepositoryService songRepositoryService;
    
	@ModelAttribute(name="playlistDesign")
	public Playlist playlistDesign(Model model, User user,@AuthenticationPrincipal UserDetails userDetails) {
		String username = userDetails.getUsername();
		user = userService.findUserByUsername(username);
		model.addAttribute("user", user);
		return new Playlist();
	}

	@ModelAttribute
    public void addSongsToModel(Model model) {
        List<SongObject> objecteds = new ArrayList<>();
        List<Song> songsList = songRepositoryService.findAll();
        System.out.println("11111111111111111");
        for (Song song: songsList) {
            byte[] file = song.getSongFile();
            String file_string = org.springframework.util.Base64Utils.encodeToString(file);
            byte[] image = song.getSongCover();
            String image_string = org.springframework.util.Base64Utils.encodeToString(image);
            objecteds.add(new SongObject(file_string,image_string,song));
            System.out.println(song.getSongTitle());
        }
        model.addAttribute("songModel",objecteds);
    }	
	
	

	
	@GetMapping
	public String getmapp(Model model) {
		return "user/addPlaylist";
	}
	@RequestMapping(value = "/addPlaylist/{fileBytes}" , method = RequestMethod.GET, produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public void getMedia(@PathVariable("fileBytes") String file, HttpServletResponse response){
    	try {
            byte[] audio = org.springframework.util.Base64Utils.decodeFromString(file);
            InputStream inputStream = new ByteArrayInputStream(audio);
            IOUtils.copy(inputStream,response.getOutputStream());
            response.flushBuffer();    		
    	}
    	catch(Exception ex) {
    		System.out.println(ex.getMessage().toString());
    	}
    }

	@PostMapping
	public String addPlaylist(@Valid @ModelAttribute("playlistDesign") Playlist myPlaylist, Errors errors, Model model) {
		
		if(errors.hasErrors()) {
			System.out.println("in");
			return "addPlaylist";
		}
		System.out.println("out");
		Playlist savedTaco=playListRepository.save(myPlaylist);
		
		return "redirect:/user/playlist";
		
	}
}
