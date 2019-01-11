package com.teammusika.musika.repositories;

import com.teammusika.musika.domains.Song;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface SongRepository extends JpaRepository<Song,Long> {
    @Override
    List<Song> findAll();
    @Override
    Optional<Song> findById(Long id);
}
