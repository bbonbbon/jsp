<%@ page language="java" contentType="text/html; charset=EUC-KR"
	import="javax.servlet.RequesrDispatcher"
    pageEncoding="EUC-KR"%>
    
<%
	request.setAttribute("name", "�̼���");
	request.setAttribute("address", "�λ�� ���");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	RequestDispatcher dispatch = request.getRequestDispatchar("request2.jsp");
	dispatch.forward(request, response);
%>

</body>
</html>