<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 중간에 셋 어트리뷰트로 저장한 데이터는 겟 어트리뷰트로 얻음 getAttribute getAttribute getAttribute
    	// 겟 파라미터는 'form안에 있는 값' 얻을 때 쓰임 getParameter
    	String name = (String)request.getAttribute("name");
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>forward ex 4번 페이지</h3>
	서블릿에서 넘어온 데이터 : <%=name %>
</body>
</html>