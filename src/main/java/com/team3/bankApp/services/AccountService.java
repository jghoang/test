package com.team3.bankApp.services;

import java.math.BigDecimal;
import java.util.List;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team3.bankApp.models.Account;
import com.team3.bankApp.models.Transaction;
import com.team3.bankApp.models.User;
import com.team3.bankApp.repositories.AccountRepository;

@Service
public class AccountService {
	
	private final AccountRepository acntRepo;
	private final UserService userServ;
	
	@Autowired
	public AccountService(AccountRepository acntRepo, UserService userServ) {
		this.acntRepo = acntRepo;
		this.userServ = userServ;
	}
	
	public List<Account> getAll(){
		return acntRepo.findAll();
	}
	public Account getById(long id) {
        return acntRepo.findById(id);
    }

	
	public void save(Account acc) {
		acntRepo.save(acc);
	}
	
	@Transactional
	public void add(Long userId) {
		Account account = new Account();
		account.setAccountBalance(BigDecimal.valueOf(0));
	
		account.setAccountType(account.getAccountType());
	
		User user = userServ.findById(userId);
		account.setUser(user);
		user.getAccounts().add(account);
		
	}
	
	
	public void updateBalance(Account account, Transaction transaction, BigDecimal amount) {
		
		account.getTransactions().add(transaction);
        switch (transaction.getTransactionType()) {
            case WITHDRAW:
                account.setAccountBalance(account.getAccountBalance().subtract(amount));
                acntRepo.save(account);
                break;
            case DEPOSIT:
                account.setAccountBalance(account.getAccountBalance().add(amount));
                acntRepo.save(account);
                break;
		default:
			break;
        }
    }

	
	
	public void deleteAccount(Long id) {
		acntRepo.deleteById(id);
	}

	
	
	
}
