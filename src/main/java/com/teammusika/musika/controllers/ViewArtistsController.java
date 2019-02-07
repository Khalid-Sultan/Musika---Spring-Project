package com.teammusika.musika.controllers;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.domains.ArtistObject;
import com.teammusika.musika.services.ArtistRepositoryService;

import java.util.*;
@Controller
public class ViewArtistsController {


    @Autowired
    private ArtistRepositoryService artistRepositoryService;

    @ModelAttribute
    public void addArtistsToModel(Model model) {
        List<Artist> artists = new ArrayList<>();
        List<String> photos = new ArrayList<>();

        List<Artist> artistList = artistRepositoryService.findAll();

        List<ArtistObject> objecteds = new ArrayList<>();
        for (Artist artist: artistList) {
            byte[] image = artist.getArtistPhoto();
            String photo = org.springframework.util.Base64Utils.encodeToString(image);
            artists.add(artist);
            photos.add(photo);
            objecteds.add(new ArtistObject(photo,artist));
        }
        model.addAttribute("allObjects",objecteds);
    }

    @GetMapping("/viewArtists")
    public String home(Model model) {
        return "viewArtists";
    }
}

