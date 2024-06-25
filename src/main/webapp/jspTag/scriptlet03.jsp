<%@page import="java.util.HashSet"%>
<%@page import="java.util.Queue"%>
<%@page import="java.util.Set"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.LinkedList"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% 
	// 이 페이지에서 전체적으로 사용할 변수는 이렇게 선언함!
	
	List<String> list = new ArrayList<>();
	list.add("홍길동");
	list.add("이순신");
	
	Queue<Integer> que = new LinkedList<>();
	que.offer(1);
	que.offer(2);
	que.offer(3);
	// poll
	
	Map<Integer, String> map = new HashMap<>();
	map.put(1, "홍길동");
	map.put(2, "이순신");
	// get
	
	Set<Integer> set = new HashSet<>();
	set.add(1);
	set.add(2); //중복 x, 순서 x

%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	리스트 : <%=list.toString() %><br>
	큐 : <%=que.toString() %><br>
	맵 : <%=map.toString() %><br>
	셋 크기 : <%=set.size() %><br>
	
	
</body>
</html>