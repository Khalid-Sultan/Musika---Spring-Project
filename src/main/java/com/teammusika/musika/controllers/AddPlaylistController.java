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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import com.teammusika.musika.domains.Playlist;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.repositories.PlaylistRepository;
import com.teammusika.musika.repositories.SongRepository;
import com.teammusika.musika.services.SongRepositoryService;

@Controller
@RequestMapping("addPlaylist")
public class AddPlaylistController {
	
	
    class Objected{
        public Long songId;
        public String songTitle;
        public String songAlbumName;
        public int songLikes;
        public String songFile;
        public String songCover;
        public Objected(String file,String photo,Song song){
            this.songFile = file;
            this.songCover = photo;
            this.songId = song.getSongId();
            this.songTitle = song.getSongTitle();
            this.songAlbumName = song.getAlbumTitle();
            this.songLikes = song.getSongLikes();
        }
    }
   // private IngredientRepository ingredientRepository;
	private SongRepository songRepository;
	private PlaylistRepository playListRepository;
	
	@Autowired
	public  AddPlaylistController(SongRepository songRepository,PlaylistRepository playlistRepository) 
	{
		this.songRepository=songRepository;
		this.playListRepository=playlistRepository;
	}

    @Autowired
	private SongRepositoryService songRepositoryService;
    
	@ModelAttribute(name="playlistDesign")
	public Playlist playlistDesign(Model model) {
		return new Playlist();
	}

	@ModelAttribute
    public void addSongsToModel(Model model) {
        List<Objected> objecteds = new ArrayList<>();
        List<Song> songsList = songRepositoryService.findAll();
        System.out.println("11111111111111111");
        for (Song song: songsList) {
            byte[] file = song.getSongFile();
            String file_string = org.springframework.util.Base64Utils.encodeToString(file);
            byte[] image = song.getSongCover();
            String image_string = org.springframework.util.Base64Utils.encodeToString(image);
            objecteds.add(new Objected(file_string,image_string,song));
            System.out.println(song.getSongTitle());
        }
        model.addAttribute("songModel",objecteds);
    }
	@GetMapping
	public String getmapp(Model model) {
		return "addPlaylist";
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
		
		return "redirect:/home";
		
	}
}
