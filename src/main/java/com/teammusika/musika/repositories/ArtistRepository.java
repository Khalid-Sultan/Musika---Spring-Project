package com.teammusika.musika.repositories;

import com.teammusika.musika.domains.Artist;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArtistRepository extends JpaRepository<Artist, Long> {
    @Override
    List<Artist> findAll();
}
