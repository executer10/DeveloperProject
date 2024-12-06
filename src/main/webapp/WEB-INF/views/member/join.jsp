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
</head>

<body>
    <form onsubmit="return formCheck()">
        <table border="1">
            <tr>
                <td>
                    <input type="text" name="id" id="id" placeholder="아이디">
                    <button type="button" style="height: 45px;">중복 체크</button>
                    <p id="idMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="password" name="pw" id="pw" placeholder="비밀번호">
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
                    <input type="text" name="birth" id="birth" placeholder="생년월일">
                    <p id="birthMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="tel" name="tel" id="tel" placeholder="휴대폰 번호">
                    <p id="telMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="radio" name="gender" placeholder="성별" value="male">남자
                    <input type="radio" name="gender" placeholder="성별" value="female">여자
                    <p id="genderMsg"></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="회원 가입" style="width: 100%; height: 40px;">
                </td>
            </tr>
        </table>
    </form>

    <script src="/resources/JS/member/header.js"></script>
    <script src="/resources/JS/member/join.js"></script>
</body>
</html>