<%@ page language="java" contentType="text/html; charset=EUC-KR"
	import="java.util.*,sec01.ex01.*"
    pageEncoding="EUC-KR"
    isELIgnored="false" %>
    
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
   <%
   	request.setCharacterEncoding("UTF-8");
   %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<jsp:useBean id="m" class="sec01.ex01.MemberBean" />
<jsp:setProperty name="m" property="*" />
<%
	MemberDAO memDAO=new MemberDAO();
	memDAO.addMember(m);
	List membersList =memDAO.listMembers();
	request.serAttribute("membersList", membersList);
%>
<title>Insert title here</title>
</head>
<body>
<jap:forward page="membersList.jsp" />
</body>
</html>