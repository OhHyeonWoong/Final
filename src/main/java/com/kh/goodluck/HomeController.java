package com.kh.goodluck;

import org.slf4j.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);	
	
	@RequestMapping(value = "home.go", method = RequestMethod.GET)
	public String home() {
		logger.info("HomeController Run");		
		
		return "home";
	}	
}
