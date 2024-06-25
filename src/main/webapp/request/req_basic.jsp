<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    	// request -> 내장 객체
   		// 내장 객체란? was가 자동으로 생성하는 객체이며 클라이언트의 다양한 정보들이 자동으로 저장됨
    	
    	StringBuffer url = request.getRequestURL(); // url 값
    	String uri = request.getRequestURI(); // uri 값 (프로토콜, ip 주소, 포트 번호가 제외된 주소)
    	String path = request.getContextPath(); // contextpath : was가 프로젝트를 구분하는 경로
    
    	String remote = request.getRemoteAddr(); // 사용자의 접속 주소
    	
    	System.out.println("접속한 사람 : "+remote);
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	url: <%=url %><br>
	uri: <%=uri %><br>
	path:<%=path %><br>
	이게 뭐지: <%=remote %><br> <!--localhost로 내가 내꺼 들어가면 0:0:0:0:0:0:0:1 타인이 내 아이피 타고 들어올 땐 타인의 ip 주소로 -->
</body>
</html>