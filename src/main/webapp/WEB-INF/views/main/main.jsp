<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
<link rel="stylesheet" href="/resources/CSS/member/header.css">
<link rel="stylesheet" href="/resources/CSS/main/main.css" />
</head>
<body>
<%@include file="/WEB-INF/views/member/header.jsp" %>
   <h1>간편요금조회</h1>
        
        <div class="billing-box">    
                <div class="billing-search">
                    <div class="contact-number">
                        <h3>사용계약번호</h3>
                        <input></input>
                    </div>
                    
                    
                    <div class="billing-day">
                        <h3>청구년월</h3>
                        <select name="year" id="year2">

                        </select>
                        <select name="month" id="month-select">

                            
                        </select>
                    
                        <button id="button1">조회</button>
                        
                    </div>
                    
                </div>
            

            <p>※<span>사용계약번호</span>를 입력해 주세요.<span>사용계약번호</span>는 청구서에 기재되어 있습니다.</p>
        </div>

    
    <h2>가스요금내역</h2>
        
    <div class="table-box">    
        <div class="table">
            <table>
                <tr>
                    <td>공급가액</td>
                    <td>-원</td>
                </tr>
                <tr>
                    <td>부가세</td>
                    <td>-원</td>
                </tr>
                <tr>
                    <td>연체료</td>
                    <td>-원</td>
                </tr>
                <tr>
                    <td>결제금액</td>
                    <td>-원</td>
                </tr>
            </table>
        </div>
        <div class="chart-container">
            <canvas id="myDoughnutChart"></canvas>
        </div>        
    </div>

        
        <a href="javascript:void(0);" onclick="window.open('details', '_blank', 'width=800,height=600');">한국지역난방공사 요금표</a>
        <h2>납부내역출력</h2>
        
        <div class="printer-box">
            <div class="name">   
                <h4>이름</h4>
                <input type="text" id="name">
            </div> 
            <div class="contact-number2">    
                <h4>사용계약번호</h4>
                <input type="text" id="number">
            </div>
            
            <label for="year-select"> </label>
            <select id="year-select">
            <!-- JavaScript로 옵션 생성 -->
            </select>
            
            <div class="button">
                <button type="button" id="button2" >인쇄</button>
                <button type="button" id="button3">엑셀저장</button>
            </div>    
        </div>
        
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>  
<script type="text/javascript" src="/resources/JS/main/main.js"></script>
    
</body>
</html>