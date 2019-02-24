package com.teammusika.musika.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teammusika.musika.domains.Playlist;
import com.teammusika.musika.repositories.PlaylistRepository;
 
@Service
public class PlaylistRepositoryService {

    @Autowired
    private PlaylistRepository playlistRepository;

    public Playlist save(Playlist playlist) {
    	return playlistRepository.save(playlist);
    }
    public List<Playlist> findAll(){
        return playlistRepository.findAll();
    }
    public void deleteById(Long id) {
    	playlistRepository.deleteById(id);
    }
}
