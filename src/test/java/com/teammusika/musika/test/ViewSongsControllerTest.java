package com.teammusika.musika.test;

import static org.hamcrest.Matchers.containsString;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

@RunWith(SpringRunner.class)
@WebMvcTest(com.teammusika.musika.controllers.ViewSongsController.class)  
@EnableJpaRepositories("com.teammusika.musika.repositories")
@ComponentScan("com.teammusika.musika")
public class ViewSongsControllerTest {

  @Autowired
  private MockMvc mockMvc;   
  @Test
  public void testViewSongsPage() throws Exception {
    mockMvc.perform(get("/home"))   
    
      .andExpect(status().isOk()) 
      
      .andExpect(view().name("index"))  
      
      .andExpect(content().string(       
          containsString("Song")));  
  }

}
