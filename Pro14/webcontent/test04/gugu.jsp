<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>구구단 출력창</title>
</head>
<body>
<c:set var="dan" value="${param.dan}" />
	<table border="1" width="800" align="center" >
	<tr align="center" bgcolor='#FFFF66'>
		<td colspan="2">
		<c:out value="${dan}" />단 출력 </td>
	</tr>
	
<c:forEach var="i" begin="1"cend="9" step="1">
	<tr align="center">
		<td width="400">
		<c:out value="${dan}" /> *
		<c:out value="${i}" />
	</td>
	<td width="400">
		<c:out value="${i*dan }" />
	</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>