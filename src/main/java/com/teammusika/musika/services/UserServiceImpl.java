package com.teammusika.musika.services;

import java.util.Arrays;
import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.teammusika.musika.repositories.RoleRepository;
import com.teammusika.musika.repositories.UserRepository;
import com.teammusika.musika.security.Role;
import com.teammusika.musika.security.User;

@Service
public class UserServiceImpl implements UserService {
	private UserRepository userRepository;
	private RoleRepository roleRepository;
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
    public UserServiceImpl(UserRepository userRepository,
                       RoleRepository roleRepository,
                       BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    public User findUserByUsername(String username) {
    	return userRepository.findByUsername(username);
    }
    
    public void saveUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setEnabled(1);
        Role userRole = roleRepository.findByRole("MUSIKAUSER");
        user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
        userRepository.save(user);
    }

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = userRepository.findByUsername(username);
		
		if(user != null) {
			return user;
		}
		throw new UsernameNotFoundException("User '" + username + "' not found");
	}
	
	
}
