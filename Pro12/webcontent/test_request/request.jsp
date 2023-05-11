<%@ page language="java" contentType="text/html; charset=EUC-KR"
	import="javax.servlet.RequesrDispatcher"
    pageEncoding="EUC-KR"%>
    
<%
	request.setAttribute("name", "이순신");
	request.setAttribute("address", "부산시 사상구");
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