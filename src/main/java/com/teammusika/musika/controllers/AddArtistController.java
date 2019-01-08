package com.teammusika.musika.controllers;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.teammusika.musika.services.ArtistRepositoryService;


@Controller
public class AddArtistController {
    @Autowired
    private ArtistRepositoryService artistRepositoryService;

    @GetMapping("/admin/addArtist")
    public String addArtist() {
        return "addArtist";
    }

    @PostMapping("/admin/uploadArtist")
    public String processOrder(
            @RequestParam("artistName") String artistFullName,
            @RequestParam("artistPhoto") MultipartFile artistPhoto,
            @RequestParam("artistEmail") String artistEmail) throws IOException{
            byte[] artistPhotoBytes = artistPhoto.getBytes();
            artistRepositoryService.storeFile(artistFullName,artistPhotoBytes,artistEmail);
            return "redirect:/";
    }

}
