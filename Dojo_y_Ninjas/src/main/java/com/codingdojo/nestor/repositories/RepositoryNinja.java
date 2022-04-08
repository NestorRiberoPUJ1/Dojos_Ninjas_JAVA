package com.codingdojo.nestor.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.nestor.models.Ninja;

@Repository
public interface RepositoryNinja extends CrudRepository<Ninja, Long>{

	List<Ninja> findAll();
	
	List<Ninja> findByDojo_id(Long id);
	
	Ninja save(Ninja newNinja);
	
}
