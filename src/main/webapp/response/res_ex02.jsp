<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 1. ex02 에서는 아이디, 비밀번호를 받도록 form 태그를 만들고 ex02_result에다 post 방식으로 전송하기 --%>
	
	<h3>입력</h3>
	<form action="res_ex02_result.jsp" method="post">
	아이디 : <input type="text" name="id" >
	비밀번호 : <input type="password" name="pw" >
	
	<input type="submit" value="전송">
	</form>


</body>
</html>