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
	<h1>���� ����
	<c: out value="${score}" />
	</h1><br>
	
	<c:choose>
		<c:when test="${score>=0 && score<100 }">
		<c:choose>
		<c:when test="${score>=90 && score<100 }">
			<h1> A���� �Դϴ� </h1>
		</c:when>
	
		<c:when test="${score>=80 && score<90 }">
			<h1> B���� �Դϴ� </h1>
		</c:when>
	
		<c:when test="${score>=70 && score<80 }">
			<h1> C���� �Դϴ� </h1>
		</c:when>
	
		<c:when test="${score>=60 && score<70 }">
			<h1> D���� �Դϴ� </h1>
		</c:when>
	
		<c:ohterwise>
			<h1> F���� �Դϴ� </h1>
		</c:ohterwise>
		</c:choose>
	</c:when>

	<c:ohtherwise>
	<h1>������ �߸� �Է��߽��ϴ�. �ٽ� �Է��ϼ���.</h1>
	<a href="scpreTest.jsp"> ���� �Է�â���� �̵�</a>
	</c:ohtherwise>
 </c:choose>
</body>
</html>