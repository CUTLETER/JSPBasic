<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>EL 태그는 표현식을 대체할 수 있음</h3>
	
	<%= 1+2 %><br>
	${1+2}<br>
	${1>2}<br>
	${2==2}<br>
	${1==2 ? '같음' : '다름'}<br>
	${1<2 && 2<3}<br>
	${1<2 || 2<3}<br>
	${'홍길동'=='홍길동'}<br> <!-- jsp에선 문자열 비교할 때 .equals() 말고 == 도 가능함 -->
	${!false}<br>
	
	+ 직관적인 연산자도 제공해줌
	${'홍길동' eq '홍길동'}<br>
	${1<2 and 2<3}<br>
	${1<2 or 2<3}<br>
	${not false}<br>
	
	
	
</body>
</html>