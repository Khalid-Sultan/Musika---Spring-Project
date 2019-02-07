package com.teammusika.musika.domains;

public class SongObject{
    public Long songId;
    public String songTitle;
    public String songAlbumName;
    public int songLikes;
    public String songFile;
    public String songCover;
    public SongObject(String file,String photo,Song song){
        this.songFile = file;
        this.songCover = photo;
        this.songId = song.getSongId();
        this.songTitle = song.getSongTitle();
        this.songAlbumName = song.getAlbumTitle();
        this.songLikes = song.getSongLikes();
    }
	
}

