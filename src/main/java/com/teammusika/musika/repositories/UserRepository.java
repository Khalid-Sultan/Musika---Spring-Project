package com.teammusika.musika.repositories;

import com.teammusika.musika.domains.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, String> {

}
