<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="your_package.PaymentReceiptDAO" %>
<%@ page import="your_package.PaymentReceipt" %>

<%
    PaymentReceiptDAO dao = new PaymentReceiptDAO();
    List<PaymentReceipt> receipts = dao.getPaymentReceipts();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>요금수납확인서</title>
    <link rel="stylesheet" href="/resources/CSS/detail/payment.css" />
</head>
<body>
    <div>
        <h2>요 금 수 납 확 인 서</h2>
        <h3>고 객 일 반 사 항</h3>
        <table>
            <%-- 고객 정보 출력 --%>
            <tr>
                <td>서비스 번호</td><td><%= receipts.get(0).getContractNumber() %></td>
                <td>고 객 번 호</td><td><%= receipts.get(0).getCustomerPhone() %></td>
                <td>고 객 명</td><td><%= receipts.get(0).getCustomerName() %></td>
            </tr>
        </table>

        <h3>요 금 청 구 내 역</h3>
        <table>
            <tr>
                <th>청 구 날 짜</th><th>청 구 금 액</th><th>납 부 금 액</th>
            </tr>
            <%-- 요금 청구 내역 출력 --%>
            <%
                for (PaymentReceipt receipt : receipts) {
            %>
            <tr>
                <td><%= receipt.getBillingDate() %></td>
                <td><%= receipt.getBilledAmount() %></td>
                <td><%= receipt.getPaidAmount() %></td>
            </tr>
            <% } %>
        </table>
        <table>
            <tr>
                <td>납부금액 합계</td><td><b>합금액</b></td>
            </tr>
        </table>
        <table>
            <tr>
                <td>위와 같이 납부하였음을 증명합니다.<br><span>출력날짜</span><br><div style="position: relative;"><span id="Seal">한국지역난방공사</span> <img id="Seall" alt="도장" src="/resources/img/detail/Seal.png" width="50" height="50"></div></td>
            </tr>
        </table>
        <p>대표 번호 1688-2488</p>
    </div>
</body>
</html>
