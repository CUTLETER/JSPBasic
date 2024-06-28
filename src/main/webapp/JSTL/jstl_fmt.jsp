<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%-- 코어 라이브러리를 c 태그로 쓰겠다는 의미 --%>        
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <%-- 코어 라이브러리를 fmt 태그로 쓰겠다는 의미 --%>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>fmt 라이브러리 - 형 변환</h3>
	<h3>parseNumber, pareDate, formatNumber, formatDate</h3>
	
	parse -> 데이터 '타입'을 바꿈
	format -> 데이터 '출력 형식'을 바꿈
	
	<h3>formatNumber - 숫자의 표현 형식을 바꿈</h3>
	<c:set var="a" value="2024" />
	
	<fmt:formatNumber value="${a }" pattern="0000000"/><br> <!-- 바꾼 형식을 var에 담거나 var가 없으면 화면에 바로 출력시킴 -->
	<fmt:formatNumber value="${a }" pattern="0000000.00"/>
	
	<hr>
	
	<h3>formatDate - 날짜의 표현 형식을 바꿈</h3>
	<c:set var="b" value="<%=new Date() %>" /> <!-- 자바 유틸로 import -->
	
	<fmt:formatDate value="${b }" pattern="yyyy년 MM월 dd일 HH:mm:ss"/><br> <!-- 사람이 볼 수 있는 형식 -->
	<fmt:formatDate value="${b }" pattern="yyyy-MM-dd hh:mm:ss"/><br>
	
	<h3>parseNumber - 문자를 숫자로 변환함</h3>
	<c:set var="c" value="1.100" />
	<fmt:parseNumber value="${c }" pattern="0.000" />
	
	<h3>parseDate - 문자를 날짜로 변환함</h3>
	<c:set var="d" value="2024-06-27"/>
	<fmt:parseDate var="result" value="${d }" pattern="yyyy-MM-dd" />
	
	${result }
	
	<hr>
	<h3>아래의 값을 2020년 5월 03일 21시 30분 22초 형식로 바꾸기</h3>
	<c:set var="e" value="2020-05-03 21:30:22" />
	<c:set var="f" value="<%=new Date() %>" />
	
	<fmt:parseDate var="date" value="${e }" pattern="yyyy-MM-dd HH:mm:ss" />
	<fmt:formatDate value="${date }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/><br>
	
	<fmt:formatDate value="${f }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/>
	
	
	
	
</body>
</html>