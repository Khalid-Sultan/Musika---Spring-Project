package com.teammusika.musika.services;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

import com.teammusika.musika.security.User;

@Component
public interface UserService extends UserDetailsService{
	
	User findUserByUsername(String username);
	void saveUser(User user);
}
