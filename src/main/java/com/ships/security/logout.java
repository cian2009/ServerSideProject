package com.ships.security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class logout {

	// This handles a HTTP 'GET' request for /showShippingCompanies
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		
		// Security settings
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    
	    // Check if security has been added (User logged in)
	    // Not null means user has been logged in
	    if (auth != null){    
	    	// log out user
	    	new SecurityContextLogoutHandler().logout(request, response, auth);
	    	
	    	// Return 'redirectIndex' page
	    	return "redirectIndex";
	    }else{
	    	
	    	// Return 'errorNotLoggedIn' page
	    	return "errorNotLoggedIn";	
	    }   
	}
}
