package com.teammusika.musika.domains;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.Builder.Default;
import lombok.Data;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

@Data
@Entity
@Table(name="songs",schema="musika_my")
public class Song {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long songId;

	@NotBlank(message = "Please Provide a valid song title.")
	@Size(min=5,message="A song must have a title with at least 5 characters long")
	private String songTitle;

	private String albumTitle;
	
	@Lob
	private byte[] songFile;

	@Lob
	private byte[] songCover;
	
	@NotNull(message = "Please provide a valid artist")
	@ManyToMany(targetEntity = Artist.class)
	private Set<Artist> songArtists = new HashSet<>();

	@Enumerated(EnumType.STRING)
	private Type type;
	public static enum Type{
		SINGLE, ALBUM
	}
	
	private int songLikes = 0;
	public void addSongLikes() {
		this.songLikes++;
	}
	public void subSongLikes() {
		if(songLikes>0)
		this.songLikes--;
	}
	
	public void addArtists(ArrayList<Artist> artists){
        for (Artist artist:artists) {
            this.songArtists.add(artist);
        }
    }
    public Song() {
    }

	public Song(String Title, ArrayList<Artist> artistSet2, String albumName, byte[] AudioFile, byte[] CoverFile){
        addArtists(artistSet2);
		this.songTitle = Title;
		this.albumTitle = albumName;
		if(this.albumTitle!="") this.type = Type.ALBUM;
		else this.type = Type.SINGLE;
		this.songLikes = 0;
		this.songFile = AudioFile;
		this.songCover = CoverFile;
	}
	
    public void setSongLikes(int songLikes) {
		this.songLikes = songLikes;
	}
	public void setSongTitle(String songTitle) {
		this.songTitle = songTitle;
	}
	public void setAlbumTitle(String albumTitle) {
		this.albumTitle = albumTitle;
	}
	public void setSongFile(byte[] songFile) {
		this.songFile = songFile;
	}
	public void setSongCover(byte[] songCover) {
		this.songCover = songCover;
	}
	public void setSongArtists(Set<Artist> songArtists) {
		this.songArtists = songArtists;
	}
	public void setType(Type type) {
		this.type = type;
	}


    public Long getSongId() {
        return songId;
    }

    public int getSongLikes() {
        return songLikes;
    }

    public String getSongTitle() {
        return songTitle;
    }

    public String getAlbumTitle() {
        return albumTitle;
    }

    public byte[] getSongFile() {
        return songFile;
    }

    public byte[] getSongCover() {
        return songCover;
    }

    public Set<Artist> getSongArtists() {
        return songArtists;
    }

    public Type getType() {
        return type;
    }
}
