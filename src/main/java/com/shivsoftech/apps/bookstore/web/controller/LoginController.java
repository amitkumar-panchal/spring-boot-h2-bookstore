package com.shivsoftech.apps.bookstore.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.shivsoftech.apps.bookstore.model.User;
import com.shivsoftech.apps.bookstore.service.SecurityService;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	protected final Log logger = LogFactory.getLog(getClass());
	
	private static String RESPONSE_PARAM_USER = "User";
	
    @Autowired
    SecurityService securityService;
    
    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String showLoginPage(ModelMap model) {
    	logger.debug("Inside showLoginPage() : model : "+model);
    	
        return "Login";
    }
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String showLogoutPage() {
    	logger.debug("Inside showLogoutPage()");
    	
        return "Logout";
    }
    
    @RequestMapping(value="/j_security_check", method = RequestMethod.POST)
    public String showHomePage(ModelMap model, 
    		@RequestParam(name = "j_username") String name, 
    		@RequestParam(name = "j_password") String password,
    		HttpServletRequest request) {
    	
    	logger.debug("Inside showHomePage() : "+model);
    	
        User user = securityService.validateUser(name, password);
        boolean isValidUser = user!=null;
    	logger.debug("Inside showHomePage() : isValidUser : "+isValidUser);
        
        if (!isValidUser) {
            model.put("errorMessage", "Invalid Credentials");
            return "LoginError";
        }
        
        request.getSession().setAttribute(RESPONSE_PARAM_USER, user);
        //model.put("password", password);
        
        return "forward:/searchBook";
    }
    
}