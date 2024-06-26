<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 쿠키 생성 문법
    	// 1. 객체 생성
    	Cookie cookie = new Cookie("user_id", "aaa123"); // 쿠키 안에 이름과 값을 저장함, 둘 다 String 이어야 함
    	Cookie cookie2 = new Cookie("user_name", "홍길동");
    	
    	// 2. 유지시간 설정
    	cookie.setMaxAge(3600); // 1시간 설정됨
    	cookie2.setMaxAge(20); // 20초 설정됨
    	
    	// 3. 쿠키를 response에 담아서 보내기
    	response.addCookie(cookie); // 매개변수 타입 cookie
    	response.addCookie(cookie2);
    	
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>쿠키란? - 서버와 클라이언트의 정보 유지수단으로 서버에서 만들어서 클라이언트에 저장함</h3>
	
	<a href="cookie_get.jsp">쿠키 사용하기</a>
	
	
	
	
</body>
</html>