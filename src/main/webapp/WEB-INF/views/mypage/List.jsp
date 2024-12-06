<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>증명서 처리 현황</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f5f6fa;
            color: #333;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .search-area {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-bottom: 30px;
            align-items: center;
        }

        select, input[type="text"], input[type="date"], .search-btn {
            padding: 10px 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            margin-right: 10px;
        }

        select {
            min-width: 150px;
        }

        input[type="text"] {
            flex: 1;
        }

        .search-btn {
            padding: 10px 20px;
            background-color: #2196F3;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .search-btn:hover {
            background-color: #1976D2;
        }

        .board-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .board-table th, .board-table td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .board-table th {
            background-color: #f8f9fa;
            border-top: 2px solid #333;
        }

        .board-table tr:hover {
            background-color: #f8f9fa;
        }

        .pagination {
            display: flex;
            justify-content: center;
            gap: 5px;
            margin-top: 30px;
        }

        .pagination a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 35px;
            height: 35px;
            border: 1px solid #ddd;
            border-radius: 4px;
            text-decoration: none;
            color: #666;
            transition: all 0.3s;
        }

        .pagination .active {
            background-color: #2196F3;
            color: white;
            border-color: #2196F3;
        }

        .pagination a:hover:not(.active) {
            background-color: #f5f5f5;
        }

        .date-range {
            display: flex;
            align-items: center;
        }

        .date-range span {
            margin: 0 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>증명서 처리 현황</h1>
        <div class="search-area">
            <select>
                <option>신청인</option>
                <option>증명서종류</option>
            </select>
            <input type="text" placeholder="검색어 입력">
            <button class="search-btn">검색</button>
        </div>
        <div class="search-area">
            <div class="date-range">
                <input type="date" id="start-date" name="start-date">
                <span>~</span>
                <input type="date" id="end-date" name="end-date">
            </div>
        </div>

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
                <!-- 더미 데이터 -->
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
</body>
</html>
