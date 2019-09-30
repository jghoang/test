package com.team3.bankApp.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.bankApp.models.Account;
import com.team3.bankApp.models.Transaction;
import com.team3.bankApp.repositories.TransactionRepository;
import com.team3.bankApp.services.AccountService;
import com.team3.bankApp.services.TransactionService;

@Controller
@RequestMapping("/accounts")
public class AccountController {

	private AccountService acntServ;
	private TransactionService transServ;
	
	public AccountController(AccountService actServ, TransactionService transServ) {
		this.acntServ = actServ;
		this.transServ = transServ;
	}
	
	@GetMapping(value="/new")
	public String newAccount(@ModelAttribute("account") Account account) {
		return "account/new.jsp";
	}
	@GetMapping(value="/{id}")
	public String showAccounts(@PathVariable("id") Long id, Model model) {
		Account account = acntServ.getById(id);
		Optional<Transaction> transaction = transServ.findById(id);
		model.addAttribute("account", account);
		model.addAttribute("transaction", transaction);
		return "account/show.jsp";
	}
	
}