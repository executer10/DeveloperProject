package com.developer.dao;

import com.developer.dto.PaymentReceiptDTO;
import java.util.List;

public interface PaymentReceiptDAO {
    
    // 요금수납확인서 등록
    int register(PaymentReceiptDTO dto) throws Exception;
    
    // 특정 계약번호로 요금수납확인서 조회
    PaymentReceiptDTO getPaymentReceiptByContractNumber(long contractNumber) throws Exception;
    
    // 요금수납확인서 목록 조회
    List<PaymentReceiptDTO> getAllPaymentReceipts() throws Exception;
    
    // 특정 계약번호로 요금수납확인서 삭제
    int delete(long contractNumber) throws Exception;
}
