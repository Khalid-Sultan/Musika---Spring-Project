package com.teammusika.musika.domains;

public class ArtistObject{
    public String photo;
    public Long artistId;
    public String artistFullName;
    public String artistEmail;
    public ArtistObject(String photo,Artist artist){
        this.photo = photo;
        this.artistId = artist.getArtistId();
        this.artistFullName = artist.getArtistFullName();
        this.artistEmail = artist.getArtistEmail();
    }
}
