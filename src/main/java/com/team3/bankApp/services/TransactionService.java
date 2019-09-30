package com.team3.bankApp.services;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;

import com.team3.bankApp.models.Account;
import com.team3.bankApp.models.Transaction;
import com.team3.bankApp.models.Transaction.TransactionType;
import com.team3.bankApp.repositories.TransactionRepository;

@Service
@Transactional
public class TransactionService {
	
	private final TransactionRepository transRepo;
	private final AccountService accountService;
	
	@Autowired
	public TransactionService(TransactionRepository transRepo, AccountService accountService) {
		this.accountService = accountService;
		this.transRepo = transRepo;
	}
	public List<Transaction> getAll(){
		return transRepo.findAll();
	}
	public Optional<Transaction> findById(Long id) {
		return transRepo.findById(id);
	}
	public void save(Transaction trans) {
		transRepo.save(trans);
	}
	 public boolean makeTransfer(Account source, Account destination, BigDecimal amount, LocalDateTime time) {
	        if (time == null)
	            time = LocalDateTime.now();
	        //if source null - cash top-up

	        if (source != null) {
	            if (amount.compareTo(BigDecimal.ZERO) <= 0 || source.getAccountBalance().compareTo(amount) < 0) {
	                return false;
	            }
	            Transaction senderTransaction = new Transaction();
	            senderTransaction.setTimeStamp(time);
	            senderTransaction.setAccount(source);
	            senderTransaction.setTransactionType(TransactionType.WITHDRAW);
	            senderTransaction.setAmount(amount);
	            accountService.updateBalance(source, senderTransaction, amount);
	        }

	        //if destination null - cash withdraw

	        if (destination != null) {
	            Transaction receiverTransaction = new Transaction();
	            receiverTransaction.setTimeStamp(time);
	            receiverTransaction.setAccount(destination);
	            receiverTransaction.setTransactionType(TransactionType.DEPOSIT);
	            receiverTransaction.setAmount(amount);
	            accountService.updateBalance(destination, receiverTransaction, amount);
	        }
	        return true;
	    }


	   

}
