<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 사용자가 아이디 기억하기를 예전에 체크했었다면, 쿠키는 이미 존재함
    	Cookie[] crr = request.getCookies();
    	String id = "";	
    	if (crr != null) {
    		for (Cookie c : crr) {
    			// idCheck 쿠키를 찾기
    			if (c.getName().equals("idCheck")) {
    				id = c.getValue();
    			}
    		}
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>쿠키 활용하기</h3>
	
	<form action="cookie_ex01_result.jsp" method="post">
	
		<!-- input태그에 미리 값을 가지려면 value속성을 쓰면 됩니다. -->
		아아디 : <input type="text" name="id" value="<%=id %>"> <!--  value="" 이 안에 쿠키 값 넣어주면 됨 -->
		비밀번호 : <input type="password" name="pw">
		<input type="submit" value="확인">
		<input type="checkbox" value="check" name="check">아이디 기억하기
	</form>

</body>
</html>