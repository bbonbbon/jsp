<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
%> 
<!DOCTYPE html>
<html>
	<head>
	  <meta charset="UTF-8">
	  <title>결과창</title>
	</head>
	<body>
		<%
			String userID = request.getParameter("userID" );
			if(userID.length()==0) {
		%>
	   			<jsp:forward  page="login.jsp" />  <!-- 포워드 시켜서 아이디 입력하지 않을시 다시 페이지로 돌아가기 -->
		<%	
			}
		%>
	  	<h1>환영합니다   <%= userID %>님!! </h1>
	</body>
</html>
