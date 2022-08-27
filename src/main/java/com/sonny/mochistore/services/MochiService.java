package com.sonny.mochistore.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sonny.mochistore.models.Mochi;
import com.sonny.mochistore.repos.MochiRepo;

@Service
public class MochiService {

	@Autowired
	private MochiRepo mochiRepo;

	
//	C	R	U	D
	// Read All
	public List<Mochi> allMochi() {
		return mochiRepo.findAll();
	}

	// Create
	public Mochi createMochi(Mochi m) {
		return mochiRepo.save(m);
	}

	// Read One
	public Mochi findMochi(Long id) {
		Optional<Mochi> maybeMochi = mochiRepo.findById(id);
		return maybeMochi.isPresent() ? maybeMochi.get() : null;
	}
	// Update
	public Mochi updateMochi(Mochi m) {
		return mochiRepo.save(m);
	}

	// Delete
	public void deleteMochi(Long id) {
		mochiRepo.deleteById(id);
	}
	
}
