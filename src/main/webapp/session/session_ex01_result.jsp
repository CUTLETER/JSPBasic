<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
     	/*
     		아이디, 비밀번호, 닉네임 받기
     		아이디, 비밀번호 같으면 로그인 성공
     			닉네임과 아이디를 저장하는 세션 생성하고 session_welcome 페이지로 리다이렉트 시키기
     		welcome 페이지에선 세션을 이용해서 "id(name)님 환영합니다."를 출력하기
     		welcome 페이지에서는 a 태그 이용해서 로그아웃 기능도 만들기
     	*/
     	
     	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String nick = request.getParameter("nick");
    	
    	if(id.equals(pw)) {
    		session.setAttribute("id", id);
    		session.setAttribute("nick", nick);
    		session.setMaxInactiveInterval(1800);
    		response.sendRedirect("session_ex01_welcome.jsp");
    	} else {
    		response.sendRedirect("session_ex01.jsp");
    	}
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>