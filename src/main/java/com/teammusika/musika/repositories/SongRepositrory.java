package com.teammusika.musika.repositories;

import org.springframework.data.repository.CrudRepository;

import com.teammusika.musika.Song;

public interface SongRepositrory extends CrudRepository<Song, Long> {

}
