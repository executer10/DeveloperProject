package com.developer.controller;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;

public class AddressEncryption {
    public static long encrypt(String address) {
        try {
            // SHA-256 해시 생성
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(address.getBytes(StandardCharsets.UTF_8));
            
            // 첫 8바이트만 사용하여 long으로 변환
            byte[] longBytes = Arrays.copyOfRange(hash, 0, 8);
            return bytesToLong(longBytes);
        } catch (Exception e) {
            return 0L;
        }
    }
    
    private static long bytesToLong(byte[] bytes) {
        long result = 0;
        for (int i = 0; i < 8; i++) {
            result = (result << 8) | (bytes[i] & 0xFF);
        }
        return Math.abs(result);
    }

    public static void main(String[] args) {
        String address = "서울시 강남구 테헤란로 123";
        System.out.println(encrypt(address));
    }
}