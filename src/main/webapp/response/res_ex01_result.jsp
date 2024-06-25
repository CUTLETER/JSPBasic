<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    	request.setCharacterEncoding("utf-8");
    
    	String name = request.getParameter("name");
    	int age = Integer.parseInt(request.getParameter("age"));
    	
    	if(age >= 20) {
    		response.sendRedirect("res_ex01_ok.jsp"); // 20 이상이면 ok 페이지로 강제 이동
    	}  else {
    		response.sendRedirect("res_ex01_no.jsp"); // 20 이하면 no 페이지로 강제 이동
    	}
    	
    	
    	// 자바 servlet으로 변경할 거임
    
    
    %>
    
    
		<!-- 
		
		이 아랫부분은 필요없음
		
		<!DOCTYPE html>
		<html>
		<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		</head>
		<body>
		
		</body>
		</html> -->