package com.teammusika.musika.services;

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.repositories.ArtistRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

import java.util.List;
 
@Service
public class ArtistRepositoryService {

    private ArtistRepository artistRepository;
    @Autowired
    public ArtistRepositoryService(ArtistRepository artistRepository) {
    	this.artistRepository = artistRepository;
    }
    public Artist storeFile(String fullName, byte[] artistPhoto, String email) {
        Artist artist = new Artist(fullName,artistPhoto,email);
        return artistRepository.save(artist);
    }
    public List<Artist> findAll(){
        return artistRepository.findAll();
    }
}
