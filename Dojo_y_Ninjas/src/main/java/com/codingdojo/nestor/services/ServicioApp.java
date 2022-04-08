package com.codingdojo.nestor.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.codingdojo.nestor.models.Dojo;
import com.codingdojo.nestor.models.Ninja;
import com.codingdojo.nestor.repositories.RepositoryDojo;
import com.codingdojo.nestor.repositories.RepositoryNinja;

@Service
public class ServicioApp {

	private final RepositoryNinja repository_ninja;
	private final RepositoryDojo repository_dojo;

	public ServicioApp(RepositoryNinja repository_ninja, RepositoryDojo repository_dojo) {
		this.repository_ninja = repository_ninja;
		this.repository_dojo = repository_dojo;
	}

	public List<Dojo> get_all_dojos() {
		return repository_dojo.findAll();
	}

	public List<Ninja> get_all_ninjas() {
		return repository_ninja.findAll();
	}

	public Dojo save_dojo(Dojo newDojo) {
		return repository_dojo.save(newDojo);
	}

	public Ninja save_ninja(Ninja newNinja) {
		return repository_ninja.save(newNinja);
	}

	public Dojo find_dojo_by_id(long id) {
		List<Dojo> findDojo = repository_dojo.findById(id);
		if (findDojo.isEmpty()) {
			return null;
		} else {
			return findDojo.get(0);
		}
	}

	public List<Ninja> find_ninjas_by_dojo(long id) {
		return repository_ninja.findByDojo_id(id);
	}

}
