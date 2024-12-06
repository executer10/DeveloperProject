package com.developer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DetailController {
	@GetMapping("/payment")
	public String payment() {
		return "detail/payment";
	}
}
