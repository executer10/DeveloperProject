package com.developer.service;

import com.developer.dto.BillingDTO;

public interface BillingService {
	int charge(BillingDTO dto) throws Exception;
}
