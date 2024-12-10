package com.developer.dao;

import com.developer.dto.BillingDTO;

public interface BillingDAO {
	int charge(BillingDTO billingDTO)  throws Exception;
}
