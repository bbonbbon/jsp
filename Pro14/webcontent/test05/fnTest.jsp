<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false" %>

   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/function" %>
   
    <%
   	request.setCharacterEncoding("UTF-8");
   %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:set var="title1" value="hello world!" />
	<c:set var="title2" value="���θ� �߽� JSP�Դϴ�!" />
	<c:set var="str1" value="�߽�" />
	<h2>���� ���� ���ڿ� �Լ� ���</h2>
	title="hello world"<br>
	title2="���θ� �߽� JSP�Դϴ�"<br>
	str1="�߽�"<br><br>
	
	fn:lenght(title1)=${fn:length(title1) } <br>
	fn:toUpperCase(title1)=${fn:toUpperCase(title1) } <br>
	fn:toLowerCase(title1)=${fn:toLowerCase(title1) } <br><br>
	
	fn:substring(title1,3,6)=&{fn:substring(title1,3,6)}<br>
	fn:trim(title1)=${fn:trim(title1)}<br>
	fn:replace(title1, "","/")=${fn:replace(title1," ","/")}<br><br>
	
	fn:indexOf(title2,str1)=${fn:indexOf(title2,str1) }<br>
	fn:contains(title1,str1)=${fn:contains(title1,str1) }<br>
	fn:contains(title2,str1)=${fn:contains(title2,str1) }<br>

</body>
</html>