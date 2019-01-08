package com.teammusika.musika.repositories;

import com.teammusika.musika.domains.Song;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SongRepository extends JpaRepository<Song,Long> {
    @Override
    List<Song> findAll();
}
