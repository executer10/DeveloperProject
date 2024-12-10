<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/resources/CSS/member/header.css">
    <link rel="stylesheet" href="/resources/CSS/member/join.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>

<body>
	<%@include file="/WEB-INF/views/member/header.jsp" %>
	
    <form onsubmit="return formCheck()" method="post" action="/join/register">
        <table border="1">
            <tr>
                <td>
                    <input type="text" name="user_id" id="user_id" placeholder="아이디">
                    <button type="button" id="idOverlap" class="idOverlap" value="N" onclick="fn_idOverlap()">중복확인</button>
                    <p id="idMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="password" name="password" id="password" placeholder="비밀번호">
                    <p id="pwMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="password" name="pwCheck" id="pwCheck" placeholder="비밀번호 확인">
                    <p id="pwCheckMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="email" name="email" id="email" placeholder="이메일">
                    <p id="emailMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="name" id="name" placeholder="이름">
                    <p id="nameMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="tel" name="phone_number" id="phone_number" placeholder="휴대폰 번호">
                    <p id="telMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="address" id="address" placeholder="주소">
               		<button type="button" onclick="searchAddress()">주소 검색</button>
                    <p id="addressMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="회원 가입" style="width: 100%; height: 40px;">
                </td>
            </tr>
        </table>
    </form>

    <script src="/resources/JS/member/join.js"></script>
    <script>
    function fn_idOverlap() {
        $.ajax({
            url: "/join/idOverlap",    // URL 수정
            type: "post",
            dataType: "json",
            data: {"user_id": $("#user_id").val()},  // 파라미터 이름 수정
            success: function(data) {
            	console.log(data)
                if($("#user_id").val() == null || $("#user_id").val() == "") {
                    alert("아이디를 입력하세요.");
                } else if(data == 0) {
                    $("#idOverlap").attr("value", "Y");
                    alert("사용 가능한 아이디입니다.");
                } else if(data == 1) {
                    $("#idOverlap").attr("value", "N");
                    alert("중복된 아이디입니다.");
                }
            },
            error: function(xhr, status, error) {    // 에러 처리 추가
                alert("서버 오류가 발생했습니다. 관리자에게 문의하세요.");
                console.log("Error: " + error);
            }
        });
    }
    
    function searchAddress() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = ''; // 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져옴
                if (data.userSelectedType === 'R') { // 도로명 주소
                    addr = data.roadAddress;
                } else { // 지번 주소
                    addr = data.jibunAddress;
                }

                // 주소 정보를 해당 필드에 넣는다
                document.getElementById("address").value = addr;
                // 상세주소 필드로 커서 이동
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }
    </script>
</body>
</html>