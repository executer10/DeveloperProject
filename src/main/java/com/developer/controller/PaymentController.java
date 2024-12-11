package com.developer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class PaymentController {
	@GetMapping("/payment")
	public String payment() {
		return "/detail/PaymentReceipt";
	}
	
	@GetMapping("/details")
	public String details() {
		return "/detail/view_details";
	}
}
