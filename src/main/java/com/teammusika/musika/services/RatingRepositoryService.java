package com.teammusika.musika.services;

import com.teammusika.musika.security.User;
import com.teammusika.musika.domains.Rating;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.repositories.RatingRepository;
import com.teammusika.musika.repositories.SongRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PatchMapping;

import lombok.extern.slf4j.Slf4j;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
 
@Service
public class RatingRepositoryService {

    @Autowired
    private RatingRepository ratingRepository;
    @Autowired
    private SongRepository songRepository;

    @PatchMapping
    public void storeRating(User user, Song song) {
    	List<Rating> ratings = findAll();
    	for (Rating rat : ratings){
    		Set<Song> songs = rat.getSongs();
    		for (Song songItem : songs) {
    			if(song.getSongId()==songItem.getSongId()) {
    				if(rat.getUser().getId()==user.getId()) {
    					song.subSongLikes();
    			        ratingRepository.delete(rat);
    					songRepository.save(song);
    					return;
    				}
    				else {
    					song.addSongLikes();
    					songRepository.save(song);
    					ratingRepository.save(rat);
    					return;
    				}
    			}
    		}
    	}
		song.addSongLikes();
		songRepository.save(song);
		Rating rating = new Rating();
		rating.setUser(user);
		rating.addSongs(song);
        ratingRepository.save(rating);
		return;
    }
    public List<Rating> findAll(){
        return ratingRepository.findAll();
    }
}
