package com.sonny.mochistore.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sonny.mochistore.models.Mochi;



@Repository
public interface MochiRepo extends CrudRepository<Mochi, Long> {
	
	List<Mochi> findAll();
	
	
}