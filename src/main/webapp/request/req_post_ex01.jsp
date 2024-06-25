<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>post방식은 form형식이 꼭 필요함</h3>
	<!-- method="post" -->
	
	<form action="req_post_ex02.jsp" method="post"> <!-- 생략하면 method="get" get 방식이 기본! -->
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="password" name="pw"><br>
		
		<input type="submit" value="로그인"> 
		
	</form>
	
	
</body>
</html>