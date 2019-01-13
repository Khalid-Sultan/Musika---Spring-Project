package com.teammusika.musika.repositories;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.teammusika.musika.security.Role;


public interface RoleRepository extends CrudRepository<Role, Long> {

	Role findByRole(String role);

}
