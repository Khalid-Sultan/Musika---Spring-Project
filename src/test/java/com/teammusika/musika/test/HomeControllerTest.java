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
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import com.teammusika.musika.services.UserService;
import com.teammusika.musika.services.UserServiceImpl;

@RunWith(SpringRunner.class)
@WebMvcTest(com.teammusika.musika.controllers.HomeController.class)
public class HomeControllerTest {

	@Autowired
	private MockMvc mockMvc;

	@Test
	@WithMockUser(username = "userUserName", roles = { "MUSIKAUSER" })
	public void testHomePage() throws Exception {
		mockMvc.perform(get("/user/home"))

				.andExpect(status().isOk())

				.andExpect(view().name("home"))

				.andExpect(content().string(containsString("Artist")));
	}

}
