package com.teammusika.musika.domains;

import javax.persistence.*;

import lombok.Data;

@Data
@Entity
@Table(name="artist",schema="musika_my")
public class Artist {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long artistId;

    private String artistFullName;
    private String artistEmail;


    @Lob
    private byte[] artistPhoto;

    public Long getArtistId() {
        return artistId;
    }
    public String getArtistFullName() {
        return artistFullName;
    }
    public String getArtistEmail() {
        return artistEmail;
    }
    public byte[] getArtistPhoto() {
        return artistPhoto;
    }

    public Artist(){}

    public Artist( String artistName, byte[] artistPhoto, String artistEmail){
        this.artistFullName = artistName;
        this.artistEmail = artistEmail;
        this.artistPhoto = artistPhoto;
    }
}
