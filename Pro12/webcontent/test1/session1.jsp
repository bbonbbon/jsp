<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String name=(String)session.getAttribute("name");
	session.setAttribute("address", "�λ�� ���");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ü ������Ʈ</title>
</head>
<body>
	�̸��� <%=name %>�Դϴ� <br>
	<a href=session2.jsp>�ι�° �������� �̵�</a>
</body>
</html>