package com.teammusika.musika.services;

import java.util.Optional;

import com.teammusika.musika.security.Role;

public interface RoleService {

	public Role save(Role role);
	
	public Iterable<Role> saveAll(Iterable<Role> roles);

	Optional<Role> findById(Long id);

	boolean existsById(Long id);
	
	Iterable<Role> findAll();

	Iterable<Role> findAllById(Iterable<Long> ids);

	long count();
	
	void deleteById(Long id);
	
	void delete(Role role);
	
	void deleteAll(Iterable<Role> roles);

	void deleteAll();
}
