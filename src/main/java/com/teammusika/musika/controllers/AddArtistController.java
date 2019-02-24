package com.teammusika.musika.controllers;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

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

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.security.User;
import com.teammusika.musika.services.ArtistRepositoryService;
import com.teammusika.musika.services.UserService;

@Controller
@RequestMapping("/admin/addArtist")
public class AddArtistController {
    @Autowired
    private ArtistRepositoryService artistRepositoryService;
	private UserService userService;
	private User currentUser;
	@Autowired
	public AddArtistController(UserService userService) {
		this.userService = userService;
	}
	@GetMapping
	public ModelAndView uploadForm(Model model, User user, @AuthenticationPrincipal UserDetails userDetails) {
		String username = userDetails.getUsername();
		user = userService.findUserByUsername(username);
		this.currentUser = user;
		ModelAndView mav = new ModelAndView("admin/addArtist");
		mav.addObject("artistDesign",new Artist());
		mav.addObject("user",user);
        return mav;
	}
	@Autowired
	private AddArtistValidator addArtistValidator;
 
	@PostMapping
	public ModelAndView processDesign(@Valid @ModelAttribute("artistDesign") Artist artist, Errors errors, @RequestParam("artistPhoto") MultipartFile artistPhotoFile) throws Exception{
		try {
			byte[] artistPhotoBytes = artistPhotoFile.getBytes();
			artist.setArtistPhoto(artistPhotoBytes);
		}
		catch(Exception ex) {
			return new ModelAndView("admin/addArtist").addObject(currentUser);
		}
		addArtistValidator.validate(artist, errors);
		if(errors.hasErrors()) {
			if(errors.hasFieldErrors("artistFullName")) {
				System.out.println("ERROR1\n\n\n\n"+errors.getErrorCount());
				return new ModelAndView("admin/addArtist").addObject(currentUser);
			}
			if(errors.hasFieldErrors("artistEmail")) {
				System.out.println("ERROR1\n\n\n\n"+errors.getErrorCount());
				return new ModelAndView("admin/addArtist").addObject(currentUser);
			}
		}
		artistRepositoryService.storeFile(artist.getArtistFullName(),artist.getArtistPhoto(),artist.getArtistEmail());
		return new ModelAndView("redirect:/admin/admin");		
    }
}

