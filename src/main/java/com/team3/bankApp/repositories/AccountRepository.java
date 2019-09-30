package com.team3.bankApp.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.team3.bankApp.models.Account;

@Repository
public interface AccountRepository extends CrudRepository<Account, Long> {
	List<Account> findAll();
	
	Account findById(long id);
	@Query("from Account where type = :type and userid = ?#{principal.claims['user_id']}")
	List<Account> findByUseridAndType(@Param("type") String type);

	@Query("from Account where userid = ?#{principal.claims['user_id']}")
    List<Account> findByUserid();
}
