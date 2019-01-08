package com.teammusika.musika.domains;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="playlist",schema="musika_my")
public class Playlist {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long playlistId;

	private String playlistName;

//	@ManyToMany(targetEntity=Song.class)
//	private Set<String> playlistSongNames = new HashSet<>();
}
