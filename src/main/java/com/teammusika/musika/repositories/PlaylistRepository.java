package com.teammusika.musika.repositories;

import com.teammusika.musika.domains.Playlist;
import org.springframework.data.repository.CrudRepository;

public interface PlaylistRepository extends CrudRepository<Playlist,Long> {

}
