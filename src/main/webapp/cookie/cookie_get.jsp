<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 쿠키 확인
    	Cookie[] cookies = request.getCookies(); // 쿠키 타입의 배열로 반환함
    	
    	// 쿠키 배열이 null이 아닌 경우에만 실행함 - 쿠키가 없는 경우도 있어서
    	if (cookies != null) {
    		for (Cookie c : cookies) {
    			out.println(c.getName()+"<br>");  // 쿠키의 이름 확인
    			out.println(c.getValue()+"<br>"); // 쿠키의 값 확인
    		}
    	}
    
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>쿠키 사용하기</h3>
	
	<p>
		쿠키는 매 요청마다 자동으로 전송돼서 request 객체에 자동 저장됨
	</p>
	
	<a href="cookie_get2.jsp">특정 쿠키만 사용하기</a>
</body>
</html>