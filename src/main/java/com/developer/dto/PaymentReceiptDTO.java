package com.developer.dto;

import java.util.Date;

public class PaymentReceiptDTO {
    private long contractNumber;
    private String customerPhone;
    private String customerName;
    private String address;
    private Date billingDate;
    private int billedAmount;
    private int paidAmount;

    // 기본 생성자
    public PaymentReceiptDTO() {
    }

    // 매개변수가 있는 생성자
    public PaymentReceiptDTO(long contractNumber, String customerPhone, String customerName, String address,
                              Date billingDate, int billedAmount, int paidAmount) {
        this.contractNumber = contractNumber;
        this.customerPhone = customerPhone;
        this.customerName = customerName;
        this.address = address;
        this.billingDate = billingDate;
        this.billedAmount = billedAmount;
        this.paidAmount = paidAmount;
    }

    public long getContractNumber() {
        return contractNumber;
    }

    public void setContractNumber(long contractNumber) {
        this.contractNumber = contractNumber;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getBillingDate() {
        return billingDate;
    }

    public void setBillingDate(Date billingDate) {
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
        return "PaymentReceipt [contractNumber=" + contractNumber + ", customerPhone=" + customerPhone
                + ", customerName=" + customerName + ", address=" + address + ", billingDate=" + billingDate
                + ", billedAmount=" + billedAmount + ", paidAmount=" + paidAmount + "]";
    }
}
