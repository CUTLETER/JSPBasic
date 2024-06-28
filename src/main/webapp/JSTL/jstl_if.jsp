<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%-- 코어 라이브러리를 c 태그로 쓰겠다는 의미 --%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 	<c:set>
		이 안에 뭐 쓸 게 아니라면
		</c:set>
		
		<c:set /> 이렇게 줄여서 쓸 수 있음
--%>	
	
	
	변수
	<c:set var="a" value="10" /> <!-- a의 값은 10 -->
	
	출력
	<c:out value="${a }" />
	
	<hr>
	
	<c:if test="true"> <!-- test 안에는 조건이 들어감 -->
		<p>무조건 실행되는 문장</p>
	</c:if>
	
	<c:if test="${a >= 10 }">
		<p>a는 10보다 같거나 크다</p>
	</c:if>
	
	<hr>
	
	<c:if test="${param.age >= 20 }">
		<p>당신은 성인입니다.</p>
	</c:if>
	
	else구문은 없음
	
	자바 코드로 쓰면 아래처럼 길게 써야 함
	
	<%-- 
	<%
	
	String age = request.getParameter("age");
		int x = Integer.parseInt(age);
	%>
	
	<% if (x>=20) { %>
		<p>당신은 성인입니다.</p>
	<% } %> 
	
	--%>
	
	<hr>
	
	<c:if test="${param.name=='홍길동' }">
		<p>홍길동 님 안녕하세요?</p>
	</c:if>
	
</body>
</html>