<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include.jsp : 이명진</title>
</head>
<body>
	안녕하세요. JSP쇼핑몰 시작 부분입니다. <br>
	<jsp:include page="duke_image.jsp" flush="true">
	<jsp.param name="name" value="듀크" />
	<jsp.param name="imgeName" value="duke.png" />
	</jsp:include>
	
	<br>
	안녕하세요. 쇼핑몰 끝부분입니다.
</body>
</html>