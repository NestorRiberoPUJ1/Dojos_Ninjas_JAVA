package com.codingdojo.nestor.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.nestor.models.Dojo;

@Repository
public interface RepositoryDojo extends CrudRepository<Dojo, Long>{

	List<Dojo> findAll();
	
	Dojo save(Dojo newDojo);
	
	List<Dojo> findById(long id);
}
