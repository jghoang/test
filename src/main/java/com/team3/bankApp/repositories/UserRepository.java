package com.team3.bankApp.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.team3.bankApp.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
	List<User> findAll();
	User findByEmail(String email);
	
	@Query(value="SELECT * FROM users WHERE id = ?1", nativeQuery=true)
    Optional<User> findById(Long id);
}
