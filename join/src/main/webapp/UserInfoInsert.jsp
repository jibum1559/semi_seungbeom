<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ������</h1>
<form action="UserInfoServlet" method="post">
	<label for="userId">���̵� : </label>
	<input type="text" id="id" name="id" required><br>
	
	<label for="password">��й�ȣ : </label>
	<input type="password" id="password" name="password" required><br>
	
	<label for="pwcheck">��й�ȣ Ȯ�� : </label>
	<input type="password" id="pwcheck" name="pwcheck" required><br>
	
	<label for="phoneNumber">�޴��� ��ȣ : </label>
	<input type="text" id="phone_Number" name="phone_Number" required><br>
	
	<label for="email">�̸��� : </label>
	<input type="email" id="email" name="email" required><br>
	
	<label for="address">�ּ� : </label>
	<input type="text" id="address" name="address" required><br>
	
	<input type = "submit" value="ȸ������"><br>
</form>
</body>
</html>