package com.sonny.mochistore.repos;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sonny.mochistore.models.User;


@Repository
public interface UserRepo extends CrudRepository<User, Long> {
	List<User> findAll();
	
//	Check if Email is in DAtabase
	Optional<User> findByEmail(String email);
}
