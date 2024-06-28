<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String name = request.getParameter("name");
    	double average = (Double)request.getAttribute("average");
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.score {
			height : 100vh;
			display : flex;
			align-items: center;
			justify-content: center;
		}
	</style>
</head>
<body>
	<div class="score">
		<%=name %> 님은 평균 <%=average %> 점으로 불합격입니다.
	</div>
</body>
</html>