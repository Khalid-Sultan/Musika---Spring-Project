package com.teammusika.musika.domains;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
@Entity
@Table(name="artist",schema="musika_my")
public class Artist {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long artistId;

    @NotBlank(message = "Please Provide a valid artist name.")
	@Size(min=5,message="Name must be at least 5 characters long")
    private String artistFullName;

	@NotBlank(message = "Please Provide a valid artist email.")
	@Email(message="Email must be valid.")
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
    public void setArtistFullName(String artistFullName) {
		this.artistFullName = artistFullName;
	}
	public void setArtistEmail(String artistEmail) {
		this.artistEmail = artistEmail;
	}
	public void setArtistPhoto(byte[] artistPhoto) {
		this.artistPhoto = artistPhoto;
	}

    public Artist(){}

    public Artist( String artistName, byte[] artistPhoto, String artistEmail){
        this.artistFullName = artistName;
        this.artistEmail = artistEmail;
        this.artistPhoto = artistPhoto;
    }
}
