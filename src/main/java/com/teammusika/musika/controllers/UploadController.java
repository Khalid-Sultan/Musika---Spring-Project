package com.teammusika.musika.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.security.User;
import com.teammusika.musika.services.ArtistRepositoryService;
import com.teammusika.musika.services.SongRepositoryService;
import com.teammusika.musika.services.UserService;

@RequestMapping("/admin/uploadSong")
@Controller
public class UploadController {
	@Autowired
	private SongRepositoryService songRepositoryService;
	@Autowired
	private UserService userService;

	private User currentUser;

	@GetMapping
	public ModelAndView uploadForm(Model model, User user, @AuthenticationPrincipal UserDetails userDetails) {
		String username = userDetails.getUsername();
		user = userService.findUserByUsername(username);
		this.currentUser = user;
		ModelAndView mav = new ModelAndView("admin/uploadSong");
		mav.addObject("songDesign",new Song());
		mav.addObject("user",user);
        return mav;
	}
	@Autowired
	private UploadSongValidator uploadSongValidator;
 
	@PostMapping
	public ModelAndView processDesign(@Valid @ModelAttribute("songDesign") Song song, BindingResult errors, @RequestParam("songArtists") String songArtists, @RequestParam("songFile") MultipartFile songFile, @RequestParam("coverFile") MultipartFile coverFile) throws Exception{
		try {
			byte[] songFileBytes = songFile.getBytes();
			byte[] songCoverBytes = coverFile.getBytes();
			song.setSongFile(songFileBytes);
			song.setSongCover(songCoverBytes);
		}
		catch(Exception ex) {
			return new ModelAndView("admin/uploadSong");
		}
		uploadSongValidator.validate(song, errors);
		if(errors.hasErrors()) {
			if(errors.hasFieldErrors("songTitle")) {
				System.out.println("ERROR1\n\n\n\n"+errors.getErrorCount());
				return new ModelAndView("admin/uploadSong").addObject(currentUser);				
			} 
		}
		String[] artists  = songArtists.split(",");
        ArrayList<String> artistNames = new ArrayList<>();
        for (String s: artists) {
            artistNames.add(s);
            System.out.println("11111\n" + s);
        }
		Song savedSong = songRepositoryService.storeFile(song.getSongFile(),artistNames,song.getAlbumTitle(),song.getSongTitle(),song.getSongCover());
		if(savedSong==null)  {
			errors.rejectValue("songArtists","validationError.songArtists","<br/>Invalid artists were given.");
			return new ModelAndView("admin/uploadSong").addObject(currentUser);
		}
		return new ModelAndView("redirect:/admin/admin");		
    }
}
