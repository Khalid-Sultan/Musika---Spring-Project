package com.teammusika.musika.controllers;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.services.ArtistRepositoryService;

import java.util.*;
@Controller
public class ViewArtistsAdminController {
    class Objected{
        public String photo;
        public Long artistId;
        public String artistFullName;
        public String artistEmail;
        public Objected(String photo,Artist artist){
            this.photo = photo;
            this.artistId = artist.getArtistId();
            this.artistFullName = artist.getArtistFullName();
            this.artistEmail = artist.getArtistEmail();
        }
    }

    @Autowired
    private ArtistRepositoryService artistRepositoryService;

    @ModelAttribute
    public void addArtistsToModel(Model model) {
        List<Artist> artists = new ArrayList<>();
        List<String> photos = new ArrayList<>();

        List<Artist> artistList = artistRepositoryService.findAll();

        List<Objected> objecteds = new ArrayList<>();
        for (Artist artist: artistList) {
            byte[] image = artist.getArtistPhoto();
            String photo = org.springframework.util.Base64Utils.encodeToString(image);
            artists.add(artist);
            photos.add(photo);
            objecteds.add(new Objected(photo,artist));
        }
        model.addAttribute("allObjects",objecteds);
    }

    @GetMapping("/admin/viewArtists")
    public String home(Model model) {
        return "viewArtistsAdmin";
    }
}

