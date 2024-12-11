package com.developer.dto;

import java.time.LocalDateTime;

public class PaymentReceiptDTO {
	// 요청 필드
    private String customerName;
    private int contractNumber;
    private int year;
    
    // 응답 필드 
    private String customerPhone;
    private LocalDateTime billingDate;
    private int billedAmount;
    private int paidAmount;
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public int getContractNumber() {
		return contractNumber;
	}
	public void setContractNumber(int contractNumber) {
		this.contractNumber = contractNumber;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getCustomerPhone() {
		return customerPhone;
	}
	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}
	public LocalDateTime getBillingDate() {
		return billingDate;
	}
	public void setBillingDate(LocalDateTime billingDate) {
		this.billingDate = billingDate;
	}
	public int getBilledAmount() {
		return billedAmount;
	}
	public void setBilledAmount(int billedAmount) {
		this.billedAmount = billedAmount;
	}
	public int getPaidAmount() {
		return paidAmount;
	}
	public void setPaidAmount(int paidAmount) {
		this.paidAmount = paidAmount;
	}
	@Override
	public String toString() {
		return "PaymentReceiptDTO [customerName=" + customerName + ", contractNumber=" + contractNumber + ", year="
				+ year + ", customerPhone=" + customerPhone + ", billingDate=" + billingDate + ", billedAmount="
				+ billedAmount + ", paidAmount=" + paidAmount + "]";
	}
}
