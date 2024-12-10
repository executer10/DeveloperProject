package com.developer.dao;

import com.developer.dto.PaymentReceiptDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PaymentReceiptDAOImpl implements PaymentReceiptDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // 요금수납확인서 등록
    @Override
    public int register(PaymentReceiptDTO dto) throws Exception {
        String sql = "INSERT INTO PaymentReceipt (contract_number, customer_phone, customer_name, address, billing_date, billed_amount, paid_amount) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, dto.getContractNumber(), dto.getCustomerPhone(), dto.getCustomerName(),
                dto.getAddress(), dto.getBillingDate(), dto.getBilledAmount(), dto.getPaidAmount());
    }

    // 특정 계약번호로 요금수납확인서 조회
    @Override
    public PaymentReceiptDTO getPaymentReceiptByContractNumber(long contractNumber) throws Exception {
        String sql = "SELECT * FROM PaymentReceipt WHERE contract_number = ?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(PaymentReceiptDTO.class), contractNumber);
    }

    // 요금수납확인서 목록 조회
    @Override
    public List<PaymentReceiptDTO> getAllPaymentReceipts() throws Exception {
        String sql = "SELECT * FROM PaymentReceipt";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(PaymentReceiptDTO.class));
    }

    // 특정 계약번호로 요금수납확인서 삭제
    @Override
    public int delete(long contractNumber) throws Exception {
        String sql = "DELETE FROM PaymentReceipt WHERE contract_number = ?";
        return jdbcTemplate.update(sql, contractNumber);
    }
}
