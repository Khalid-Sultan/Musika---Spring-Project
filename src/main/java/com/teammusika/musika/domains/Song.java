package com.teammusika.musika.domains;

import javax.persistence.*;

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
	private int songLikes;
	private String songTitle;
	private String albumTitle;
	@Lob
	private byte[] songFile;
	@Lob
	private byte[] songCover;

    public Song() {
    }

    @ManyToMany(targetEntity = Artist.class)
	private Set<Artist> songArtists = new HashSet<>();

	@Enumerated(EnumType.STRING)
	private Type type;
	public static enum Type{
		SINGLE, ALBUM
	}
	public void addArtists(ArrayList<Artist> artists){
        for (Artist artist:artists) {
            this.songArtists.add(artist);
        }
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
