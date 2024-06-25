<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
	쿼리스트링
	주소?name=value 
	여러 값이라면 &로 연결함
	예) http://localhost:8181/JSPBasic/request/req_ex02.jsp?nick=안녕&hobby=A&hobby=B&hobby=C&region=경기도
	 -->

	<h3>get 방식은 주소를 통해서 사용할 수 있음</h3>
	<a href="req_ex04.jsp?nick=홍길동&age=20">get 방식</a>
	
</body>
</html>