package com.teammusika.musika.services;

import com.teammusika.musika.domains.Artist;
import com.teammusika.musika.domains.Song;
import com.teammusika.musika.repositories.ArtistRepository;
import com.teammusika.musika.repositories.SongRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Slf4j
@Service
public class SongRepositoryService {

    @Autowired
    private SongRepository songRepository;
    @Autowired
    private ArtistRepository artistRepository;

    public Song storeFile(byte[] file, ArrayList<String> artistsArrayList, String albumName, String title, byte[] cFile) {
        ArrayList<Artist> artistSet = new ArrayList<>();
        artistRepository.findAll().forEach(artist -> artistSet.add(artist));
        ArrayList<Artist> artistSet2 = new ArrayList<>();
        for (int i = 0; i<artistsArrayList.size();i++) {
            String currentArtist = artistsArrayList.get(i);
            for (Artist artist:artistSet){
                if(artist.getArtistFullName().equalsIgnoreCase(currentArtist)){
                    artistSet2.add(artist);
                }
            }
        }
        for (Artist artist:artistSet2) {
            System.out.println(artist.getArtistFullName());
        }
        if (artistSet2.size()==0){
            return null;
        }
        try {
            Song song = new Song(title,artistSet2,albumName,file, cFile);
            return songRepository.save(song);
        }
        catch (Exception ex){
            System.out.println(ex.getMessage().toString());
            return null;
        }
    }
    public List<Song> findAll(){
        return songRepository.findAll();
        
    }
    public Optional<Song> findByID(Long Id){
        return songRepository.findById(Id);
    }
}
