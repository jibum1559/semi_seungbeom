<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�����Կ� �����Ͽ����ϴ�.</title>
</head>
<body>
<h1>ȸ������ �Ϸ�</h1>
<h2>ȸ������ Ȯ��</h2>
<p>���̵� : <%= session.getAttribute("id") %></p>
<p>�޴��� ��ȣ :<%= session.getAttribute("phone_number") %></p>
<p>�̸��� : <%= session.getAttribute("email") %></p>
<p>�ּ� : <%= session.getAttribute("address") %></p>
</body>
</html>