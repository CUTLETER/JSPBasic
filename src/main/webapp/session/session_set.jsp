<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
 			세션은 쿠키와 비슷하게 서버와 정보를 지속적으로 유지하기 위해서 사용됨
 			서버가 생성하고, 서버가 관리하기 때문에 중요한 값을 저장해도 됨
    	*/
    	
    	session.setAttribute("user_id", "xxx123"); // 매개변수로 앞은 이름, 키(String), 뒤는 값(모든 object)
    	session.setAttribute("user_name", "홍길동");
    
    	// 세션은 기본 30분 (톰캣 기본 설정값)
    	session.setMaxInactiveInterval(3600); // 1시간으로 변경시킴
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="session_get.jsp">세션 값 확인하기</a>
</body>
</html>