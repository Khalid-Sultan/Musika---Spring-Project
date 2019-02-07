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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.teammusika.musika.domains.SongObject;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.security.User;
import com.teammusika.musika.services.SongRepositoryService;
import com.teammusika.musika.services.UserService;

@Controller
public class HomeController {
 
    @Autowired
    private SongRepositoryService songRepositoryService;

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
	
	private UserService userService;
	
	@Autowired
	public HomeController(UserService userService) {
		this.userService = userService;
	}
	
	  
	  @GetMapping("/user/home")
	  public String index(Model model, User user,@AuthenticationPrincipal UserDetails userDetails) {
			String username = userDetails.getUsername();
			user = userService.findUserByUsername(username);
			model.addAttribute("user", user);
			return "/user/home";
	  }

	   @RequestMapping(value = "user/home/{fileBytes}" , method = RequestMethod.GET, produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
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

}
