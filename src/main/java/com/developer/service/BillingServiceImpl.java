package com.developer.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.developer.dao.BillingDAO;
import com.developer.dto.BillingDTO;

@Service
public class BillingServiceImpl implements BillingService{

	@Autowired
	BillingDAO billingDAO;
	
	@Override
	public int charge(BillingDTO dto) throws Exception {
		return billingDAO.charge(dto);
	}
}
