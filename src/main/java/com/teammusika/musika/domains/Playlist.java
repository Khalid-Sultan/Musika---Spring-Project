package com.teammusika.musika.domains;



import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
@Entity
@Table(name="playlist",schema="my_musika")
public class Playlist {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long playlistId;
	

//@NotNull
//	@ManyToMany
//	private User user;
	
	@NotNull
	@Size(min=5, message="Name must be at least 5 characters long")
	private String playlist_name;
	@ManyToMany(targetEntity=Song.class)
	@Size(min=1, message="You must choose at least 1 Song")
	private Set<Song> songs= new HashSet<>();

}
