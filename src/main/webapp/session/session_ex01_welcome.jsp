<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 이 페이지는 세션이 있는 사람(로그인한 사람)만 들어올 수 있는 페이지
    	// 주소만 찍으면 다 들어올 수 있음 (현재 상태)
    	// 그러니 로그인 못한 사람은 접근 못하도록 만들기
    	if(session.getAttribute("id")==null) { // 로그인 해야 생성되는 세션에 값이 없다? -> 그럼 로그인 못한 사람
    		response.sendRedirect("session_ex01.jsp");
    	}
    
    	String id = (String)session.getAttribute("id");
    	String nick = (String)session.getAttribute("nick");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인 성공!</h3>
	<%=id %>(<%=nick %>) 님 환영합니다.
	<br>
	<br>
	<a href="session_ex01_logout.jsp">로그아웃</a>
</body>
</html>