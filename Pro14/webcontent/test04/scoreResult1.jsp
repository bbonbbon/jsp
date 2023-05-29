<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:set var="score" value="${param.score}"/>
	<h1>시험 점수
	<c: out value="${score}" />
	</h1><br>
	
	<c:choose>
		<c:when test="${score>=0 && score<100 }">
		<c:choose>
		<c:when test="${score>=90 && score<100 }">
			<h1> A학점 입니다 </h1>
		</c:when>
	
		<c:when test="${score>=80 && score<90 }">
			<h1> B학점 입니다 </h1>
		</c:when>
	
		<c:when test="${score>=70 && score<80 }">
			<h1> C학점 입니다 </h1>
		</c:when>
	
		<c:when test="${score>=60 && score<70 }">
			<h1> D학점 입니다 </h1>
		</c:when>
	
		<c:ohterwise>
			<h1> F학점 입니다 </h1>
		</c:ohterwise>
		</c:choose>
	</c:when>

	<c:ohtherwise>
	<h1>점수를 잘못 입력했습니다. 다시 입력하세요.</h1>
	<a href="scpreTest.jsp"> 점수 입력창으로 이동</a>
	</c:ohtherwise>
 </c:choose>
</body>
</html>