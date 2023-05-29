<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="member_action.jsp">
	<h1  style="text-align:center">회원 가입창</h1>
	<table  align="center">
		<tr>
			<td width="200">
			<p align="right"></p>아이디
			</td>
			<td width="400"><input type="text" name="id"></td>
			</tr>
			
			<tr>
				<td width="200">
				<p align="right"></p>비밀번호
				</td>
				<td width="400"><input type="text" name="pwd"></td>
			</tr>
			
			<tr>
				<td width="200">
				<p align="right"></p>이름
				</td>
				<td width="400"><input type="text" name="name"></td>
			</tr>
			
			<tr>
				<td width="200">
				<p align="right"></p>이메일
				</td>
				<td width="400"><input type="text" name="email"></td>
			</tr>

</body>
</html>