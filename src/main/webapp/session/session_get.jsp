<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//세션은 한번 저장해 놓으면 만료되기 전 or 브라우저를 끄기 전까지 아무 곳에서나 사용할 수 있음
		
    	//String user_id = session.getAttribute("user_id"); 세션은 object로 모든 값을 다 받는 대신 저장도 object로 함, 캐스팅 필요
    	String user_id = (String)session.getAttribute("user_id");
		String user_name = (String)session.getAttribute("user_name"); 
		
		// 세션의 값을 삭제하기
		session.removeAttribute("user_name");
		
		// 세션의 값 초기화, 무효화
		session.invalidate();
		
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		세션에 저장된 아이디 : <%=user_id %>
		세션에 저장된 이름 : <%=user_name %>
</body>
</html>