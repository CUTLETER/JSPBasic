<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 어플리케이션 내장 객체는 session 사용 문법과 동일함
    	// 다른 점은 생명주기! was를 시작할 때 전역에서 단 1개 생성됨
    	// 프로그램 전역에서 사용할 여러 값을 저장시킬 수 있음
    	int total = 0;
    	
		// 어플리케이션 객체에 해당 값이 있으면 가져옴
    	if (application.getAttribute("total") != null) {
    		total = (int)application.getAttribute("total");
    	}
    
    	total++;
		
    	application.setAttribute("total", total); // 브라우저 껐다가 키더라도 여전히 누적된 채! session은 브라우저 끄면 다시 초기화됨
    
    	// 값의 사용
    	//int result = (int)application.getAttribute("total");
    	
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과 : <%=total %>
	<% if(total == 77) { %>
			<p>축하드립니다. 커피 한잔 사줌</p>
		<% } %>
	
	
</body>
</html>