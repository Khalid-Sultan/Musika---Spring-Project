package com.teammusika.musika.domains;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import com.teammusika.musika.security.User;

@Data
@Entity
@Table(name = "rating", schema = "musika_my")
public class Rating {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long ratingId;

	@ManyToOne(targetEntity = User.class)
	private User user;

	@ManyToMany(targetEntity = Song.class)
	private Set<Song> songs = new HashSet<>();
	 
	public Long getRatingId() {
		return ratingId;
	}

	public void setRatingId(Long ratingId) {
		this.ratingId = ratingId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public Set<Song> getSongs() {
		return songs;
	}

	public void setSongs(Set<Song> songs) {
		this.songs = songs;
	}

	public void addSongs(Song song) {
		this.songs.add(song);
	}

}
