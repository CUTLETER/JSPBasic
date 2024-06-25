<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
   	 	request.setCharacterEncoding("utf-8");
    	
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String[] like = request.getParameterValues("inter");
    	String good = request.getParameter("major");
    	String date = request.getParameter("regdate");
    	String region = request.getParameter("region");
    	String box = request.getParameter("box");
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	아이디 : <%=id %><br>
	비밀번호 : <%=pw %><br>
	관심분야 : <%=Arrays.toString(like) %><br>
	전공분야 : <%=good %><br>
	입사일 : <%=date %><br>
	사는곳 : <%=region %><br>
	자기소개 : <%=box %><br>

</body>
</html>