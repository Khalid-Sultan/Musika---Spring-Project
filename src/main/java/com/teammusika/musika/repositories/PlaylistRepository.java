package com.teammusika.musika.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.teammusika.musika.domains.Playlist;

public interface PlaylistRepository extends CrudRepository<Playlist, Long> {

	@Override
	 List<Playlist> findAll();
}
