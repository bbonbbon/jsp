<%@ page language="java" contentType="text/html; charset=EUC-KR"
   import="java.util.Date" pageEncoding="EUC-KR" isELIgnored="false" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/core" %>
   
   <%
   	request.setCharacterEncoding("UTF-8");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ �±� ���̺귯�� ����</title>
</head>
<body>
	<h2>fmt�� number �±׸� �̿��� ���� ������ ����.</h2>
	<c:set var="price" value="100000000" />
	<fmt:formatNumber value="${price}" type="number" var="priceNumber" />
	
	��ȭ�� ǥ���� :
	<fmt:formatNumber type="currency" currencyCtmbol="\" value="${price}" groupingUsed="true" /><br>
	
	�ۼ�Ʈ�� ǥ���� :
	<fmt:formatNumber value="${price}" type="percent" groupingUsed="false" /><br>
	
	�Ϲ� ���ڷ� ǥ���� :
	&{priceNumber}<br>
	
	<h2>formatNumber ����</h2>
	<c:set var="now" value="<%=new Date() %>" />
	<fmt:formatDate value="${now }" type="date" dateStyle="full" /><br>
	<fmt:formatDate value="${now }" type="date" dateStyle="short" /><br>
	<fmt:formatDate value="${now }" type="time" /><br>
	<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" /><br>
	<fmt:formatDate value="${now }" pattern="YYY-MM-DD : hh:mm:ss" /><br>
	
	<br><br>
	�ѱ� ���� �ð� :
	<fmt:formatDate vlaue="${now }" type="both" dateStyle="full" timeStyle="full" /><br><br>
	
	<fmt:timeZone vlaue="America/New York" >
	���� ���� �ð� :
	<fmt:formatDate vlaue="${now }" type="both" dateStyle="full" timeStyle="full" /><br>
	</fmt:timeZone>
	
</body>
</html>