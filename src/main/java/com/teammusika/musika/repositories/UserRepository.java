package com.teammusika.musika.repositories;

import org.springframework.data.repository.CrudRepository;

import com.teammusika.musika.security.User;

public interface UserRepository extends CrudRepository<User, Long> {
	User findByUsername(String username);
}
