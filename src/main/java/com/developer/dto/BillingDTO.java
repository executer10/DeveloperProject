package com.developer.dto;

import java.util.Date;

public class BillingDTO {
	private int contract_number;
	private int billing_date;
	private Date usage_data;
	private int usage_fee;
	private int overdue_fee;
	
	private int year;
    private int month;
	
	public int getContract_number() {
		return contract_number;
	}
	public void setContract_number(int contract_number) {
		this.contract_number = contract_number;
	}
	public int getBilling_date() {
		return billing_date;
	}
	public void setBilling_date(int billing_date) {
		this.billing_date = billing_date;
	}
	public Date getUsage_data() {
		return usage_data;
	}
	public void setUsage_data(Date usage_data) {
		this.usage_data = usage_data;
	}
	public int getUsage_fee() {
		return usage_fee;
	}
	public void setUsage_fee(int usage_fee) {
		this.usage_fee = usage_fee;
	}
	public int getOverdue_fee() {
		return overdue_fee;
	}
	public void setOverdue_fee(int overdue_fee) {
		this.overdue_fee = overdue_fee;
	}
	
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	
	@Override
	public String toString() {
		return "BillingDTO [contract_number=" + contract_number + ", billing_date=" + billing_date + ", usage_data="
				+ usage_data + ", usage_fee=" + usage_fee + ", overdue_fee=" + overdue_fee + ", year=" + year
				+ ", month=" + month + "]";
	}
	
}
