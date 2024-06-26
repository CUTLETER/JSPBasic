<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String point = request.getParameter("point");
    
    	// 중간에 포워드를 통해 끼워 넣은 데이터
    	String name = request.getParameter("name");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	포워드로 넘어온 값 : <%=point %> <!-- 값이 여전히 유효함 -->
	중간에 끼워 넣은 데이터 : <%=name %>
</body>
</html>