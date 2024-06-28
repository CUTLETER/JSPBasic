<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 세션에 값을 저장함
    	session.setAttribute("user_id", "aaa123");
    	session.setAttribute("user_name", "홍길동");
    	
    	// app에 값을 저장함
    	application.setAttribute("menu", new String[] {"유자티","유자에이드"});
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${sessionScope.user_id}<br>
	${sessionScope.user_name}<br>
	
	<!-- 
		sessionScope, applicationScope도 생략이 가능한데
		쓰는 편이 좋음
		생략하게 되면 requst -> session -> application 순서로 이름값을 찾음
		만약 동일한 이름이 request 에 들어 있으면 request 안에 있는 값을 가져옴
	 -->
	
	${applicationScope.menu }
	
</body>
</html>