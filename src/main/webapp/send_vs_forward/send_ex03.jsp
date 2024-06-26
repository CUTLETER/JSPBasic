<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String point = request.getParameter("point");
    
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	리다이렉트로 넘어온 데이터 : <%=point %> <!-- 첫 페이지의 point값은 여기까지 넘어오지 않음 -->
</body>
</html>