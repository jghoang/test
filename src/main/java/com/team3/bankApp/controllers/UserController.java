package com.team3.bankApp.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.team3.bankApp.models.Account;
import com.team3.bankApp.models.User;
import com.team3.bankApp.services.UserService;

@Controller
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    // <----- Methods ----->
    // GET Methods
    
    @GetMapping("/registration")
    public String registerForm(@ModelAttribute("user") User user) {
        return "user/newUser.jsp";
    }
    
    // route for login view
    @GetMapping("/login")
    public String login() {
        return "index.jsp";
    }
    
    
    @PostMapping(value="/registration")
    public String registerUser(@Valid @ModelAttribute("user") User user, @ModelAttribute("account") Account account, BindingResult result, HttpSession session) {
    	
    	if(result.hasErrors()) {
    		return "user/newUser.jsp";
    	} else {
    		// register user, redirect to home route
    		userService.addUser(user);
    		session.setAttribute("useremail", user.getEmail());
    		return "redirect:/home";
    	}
    }
    
    @PostMapping(value="/login")
    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session) {
        // authenticates user -- if true, add user to session and route to home
    	if(userService.authenticateUser(email, password)) {
    		session.setAttribute("useremail", email);
    		return "redirect:/home";
    	} else {
    		// else create error and return page
    		model.addAttribute("error", "The username / password combination is not valid! Please try again.");
    		return "index.jsp";
    	}
    }
    
    @RequestMapping("/home")
    public String home(HttpSession session, Model model) {
        // get user from session, save them in the model and return the home page
    	model.addAttribute("user", userService.findByEmail((String)session.getAttribute("useremail")));
    	return "user/home.jsp";
    }
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
}
