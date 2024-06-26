<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>1번 경로</h3>
	<!-- 
	경로의 개념은 두 가지!
	1. 상대 경로
		내 위치에서 찾아가는 상대적인 경로
	2. 절대 경로
		전체 경로
		앞에 /를 붙임
	 -->
	<a href="path_ex02.jsp">2번 상대 경로</a>
	<a href="/JSPBasic/path/path_ex02.jsp">2번 절대 경로</a> <!-- http://localhost:8181는 내꺼 내가 들어가는 거라 생략 가능함 -->
	
</body>
</html>