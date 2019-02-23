package com.teammusika.musika.repositories;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.teammusika.musika.security.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {

	Role findByRole(String role);

}
