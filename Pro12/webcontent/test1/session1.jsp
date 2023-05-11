<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String name=(String)session.getAttribute("name");
	session.setAttribute("address", "부산시 사상구");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>내장 객체 프로젝트</title>
</head>
<body>
	이름은 <%=name %>입니다 <br>
	<a href=session2.jsp>두번째 페이지로 이동</a>
</body>
</html>