<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입에 성공하였습니다.</title>
</head>
<body>
<h1>회원가입 완료</h1>
<h2>회원정보 확인</h2>
<p>아이디 : <%= session.getAttribute("id") %></p>
<p>휴대폰 번호 :<%= session.getAttribute("phone_number") %></p>
<p>이메일 : <%= session.getAttribute("email") %></p>
<p>주소 : <%= session.getAttribute("address") %></p>
</body>
</html>