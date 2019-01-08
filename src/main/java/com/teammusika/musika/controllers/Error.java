package com.teammusika.musika.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Error {
    @GetMapping("/ErrorAddArtist")
    public String ErrorAddArtist() {
        return "ErrorAddArtist";
    }
    @GetMapping("/ErrorUploadSong")
    public String ErrorUploadSong() {
        return "ErrorUploadSong";
    }
    @GetMapping("/ErrorInvalidArtist")
    public String ErrorInvalidArtist() {
        return "ErrorInvalidArtist";
    }
}
