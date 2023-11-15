<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입</h1>
<form action="UserInfoServlet" method="post">
	<label for="userId">아이디 : </label>
	<input type="text" id="id" name="id" required><br>
	
	<label for="password">비밀번호 : </label>
	<input type="password" id="password" name="password" required><br>
	
	<label for="pwcheck">비밀번호 확인 : </label>
	<input type="password" id="pwcheck" name="pwcheck" required><br>
	
	<label for="phoneNumber">휴대폰 번호 : </label>
	<input type="text" id="phone_Number" name="phone_Number" required><br>
	
	<label for="email">이메일 : </label>
	<input type="email" id="email" name="email" required><br>
	
	<label for="address">주소 : </label>
	<input type="text" id="address" name="address" required><br>
	
	<input type = "submit" value="회원가입"><br>
</form>
</body>
</html>