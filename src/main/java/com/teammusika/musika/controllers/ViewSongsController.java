package com.teammusika.musika.controllers;
 
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.teammusika.musika.domains.Song;
import com.teammusika.musika.services.SongRepositoryService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class ViewSongsController {
    class Objected{
        public Long songId;
        public String songTitle;
        public String songAlbumName;
        public int songLikes;
        public String songFile;
        public String songCover;
        public Objected(String file,String photo,Song song){
            this.songFile = file;
            this.songCover = photo;
            this.songId = song.getSongId();
            this.songTitle = song.getSongTitle();
            this.songAlbumName = song.getAlbumTitle();
            this.songLikes = song.getSongLikes();
        }
    }

    @Autowired
    private SongRepositoryService songRepositoryService;

    @ModelAttribute
    public void addSongsToModel(Model model) {
        List<Objected> objecteds = new ArrayList<>();
        List<Song> songsList = songRepositoryService.findAll();
        System.out.println("11111111111111111");
        for (Song song: songsList) {
            byte[] file = song.getSongFile();
            String file_string = org.springframework.util.Base64Utils.encodeToString(file);
            byte[] image = song.getSongCover();
            String image_string = org.springframework.util.Base64Utils.encodeToString(image);
            objecteds.add(new Objected(file_string,image_string,song));
            System.out.println(song.getSongTitle());
        }
        model.addAttribute("songModel",objecteds);
    }

 

    @RequestMapping(value = "/index/{fileBytes}" , method = RequestMethod.GET, produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
    public void getMedia(@PathVariable("fileBytes") String file, HttpServletResponse response){
    	try {
            byte[] audio = org.springframework.util.Base64Utils.decodeFromString(file);
            InputStream inputStream = new ByteArrayInputStream(audio);
            IOUtils.copy(inputStream,response.getOutputStream());
            response.flushBuffer();    		
    	}
    	catch(Exception ex) {
    		System.out.println(ex.getMessage().toString());
    	}
    }
    
//	@PostMapping
//	public void count(Model model) {
//		System.out.println("out stream");
//	}

}
