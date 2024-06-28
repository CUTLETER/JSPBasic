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
	<!-- choose 안에서는 when과 otherwise 쓸 수 있음, 중첩도 가능함 (choose는 {} 개념) -->
	<c:choose>
		<c:when test="${param.name == '홍길동'}"> <!-- if -->
			<p>홍길동입니다.</p>
		</c:when>
		<c:when test="${param.name == '이순신' }"> <!-- else if -->
			<p>이순신입니다.</p>
		</c:when>
		<c:otherwise>
			<p>둘 다 아닙니다.</p>
		</c:otherwise>
	</c:choose>
	
	<!-- 20세 이상이면 성인, 20세 미만이면 미성년자 choose문 -->
	<c:choose>
		<c:when test="${param.age >=20 }">
			<p>성인입니다.</p>
		</c:when>
		<c:otherwise>
			<p>미성년자입니다.</p>
		</c:otherwise>
	
	</c:choose>
	
	
	
</body>
</html>