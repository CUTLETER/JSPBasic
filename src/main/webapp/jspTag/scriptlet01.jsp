<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 자바 코드 작성하는 곳
		// 자바 main 안
		
			int a = 1;
			if (a >= 10) {
				System.out.println("참"); // 콘솔 창으로 출력
				out.println("참"); // 화면으로 출력
			} else {
				System.out.println("거짓");
				out.println("거짓");
			}
	
	%>
	
	<hr>
	
	<%
			for (int i = 1; i<=10; i++) {
				out.println(i+ "<br>"); // 브라우저에서 줄바꿈 태그로 인식됨
			}
	
	%>
	
	<hr>
	
	<%
			if(a >= 10) {
				out.println("<a href='#'>참</a>"); // 쌍따옴표 쓸 수 없으니 홑따옴표 쓰기
			} else {
				out.println("<a href='#'>거짓</a>");
			}
	%>
	
	<hr>
	
			<!-- 위 if문을 스크립트릿으로 바꿔보기 -->
			<% if(a >= 10) { %>
				<a href="#">참</a>
			<% } else { %>
				<a href="#">거짓</a>
			<% } %>
	
	
</body>
</html>