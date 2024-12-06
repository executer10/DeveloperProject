<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">    
    <title>Document</title>
    <style>
        /* 출력용 A4 크기 설정 */
        @media print {
            @page {
                size: A4;
                margin: 20mm; /* 출력 여백 */
            }
            body {
                margin: 0;
                font-family: Arial, sans-serif;
            }
        }

        /* 전체 레이아웃 */
        body {
            width: 210mm;
            margin: 0 auto;
            font-family: Arial, sans-serif;
            line-height: 1.4;
        }

        h2, h3 {
            text-align: center;
            margin-bottom: 15px;
        }

        table {
            width: 95%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #000;
            padding: 6px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        /* 하단 텍스트 */
        p {
            text-align: right;
            margin-top: 20px;
            font-size: 14px;
        }
        #Seal {
            position: relative; /* 부모 요소 */
            z-index: 0; /* 텍스트를 이미지 뒤쪽에 배치 */
        }

        #Seall {
            position: absolute; /* 이미지를 특정 위치로 겹침 */
            top: -100%; /* 텍스트 위쪽에 겹치도록 설정 */
            left: 59%; /* 텍스트 왼쪽에 맞춤 */            
            z-index: 1; /* 텍스트보다 위에 배치 */
        }

    </style>
</head>
<body>
    <div width=>
        <h2> 요 금 수 납 확 인 서</h2>
        <h3>고 객 일 반 사 항</h3>
        <table>
            <tr>
                <td>서비스 번호</td><td>2131313214</td><td>고 객 번 호</td><td>010-1111-1111</td><td>고 객 명</td><td>정자바</td>
            </tr>
        </table>
        <h3>요 금 청 구 내 역</h3>
        <table>
            <tr>
                <th>청 구 날 짜</th><th>청 구 금 액</th><th>납 부 금 액</th>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
            <tr>
                <td>2024/12/11</td><td>78,000</td><td>0</td>
            </tr>
        </table>
        <table>
            <td>납부금액 합계</td><td><b>합금액</b></td>
        </table>
        <table>
            <tr>
                <td>위와 같이 납부하였음을 증명합니다.<br><span>출력날짜</span><br><div style="position: relative;"><span id="Seal">한국지역난방공사</span> <img id="Seall" src="/resources/img/detail/Seall.png" alt="도장" width="50" height="50"></div>
                </td>
            </tr>
        </table>
        <p>대표 번호 1688-2488</p>
    </div>
</body>
</html>