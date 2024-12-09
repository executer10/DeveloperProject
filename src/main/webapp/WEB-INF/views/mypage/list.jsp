<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>증명서 처리 현황</title>
    <link rel="stylesheet" type="text/css" href="resources/CSS/mypage/mypage.css">    
</head>
<body>
    <%@ include file="../member/header.jsp" %>
    <div class="container">
        <h1>증명서 처리 현황</h1>
        <form method="GET" action="/board/search">
            <div class="search-area">
                <select name="filter1">
                    <option>신청인</option>
                    <option>증명서종류</option>
                </select>
                <select name="filter2">
                    <option>신청인</option>
                    <option>증명서종류</option>
                </select>
                <input type="text" name="keyword" placeholder="검색어 입력">
                <button class="search-btn" type="submit">검색</button>
            </div>
            <div class="search-area">
                <div class="date-range">
                    <input type="date" id="start-date" name="startDate">
                    <span>~</span>
                    <input type="date" id="end-date" name="endDate">
                </div>
            </div>
        </form>
        <table class="board-table">
            <thead>
                <tr>
                    <th>회사명</th>
                    <th>신청인</th>
                    <th>발급일</th>
                    <th>발급방법</th>
                </tr>
            </thead>
            <tbody>
                <!-- 검색 결과 데이터 -->
                <tr>
                    <td>회사A</td>
                    <td>신청인1</td>
                    <td>2024-01-10</td>
                    <td>온라인/팩스 출력</td>
                </tr>
                <tr>
                    <td>회사B</td>
                    <td>신청인2</td>
                    <td>2024-01-11</td>
                    <td>방문출력</td>
                </tr>
                <tr>
                    <td>회사C</td>
                    <td>신청인3</td>
                    <td>2024-01-12</td>
                    <td>온라인/팩스 출력</td>
                </tr>
            </tbody>
        </table>
        <div class="pagination">
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
        </div>
    </div>
    <script src="resources/JS/mypage.js"></script>
</body>

</html>
