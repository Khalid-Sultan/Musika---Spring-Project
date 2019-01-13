package com.teammusika.musika.services;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.teammusika.musika.security.User;

public interface UserService extends UserDetailsService{
	
	User findUserByUsername(String username);
	void saveUser(User user);
}
