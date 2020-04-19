package com.shivsoftech.apps.bookstore.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController implements ErrorController  {
 
	protected final Log logger = LogFactory.getLog(getClass());
	
    @RequestMapping("/")
    public String home() {

    	logger.debug("Inside home()");
    	
        return "Login";
    }
    
    @RequestMapping("/error")
    public String handleError() {
    	
    	logger.debug("Inside handleError()");

        return "Error";
    }
 
    @Override
    public String getErrorPath() {
    	
    	logger.debug("Inside getErrorPath()");
    	
        return "/error";
    }
}