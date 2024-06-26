<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>경로 실습</h3>
	
	<!-- a 태그로 jspTag 폴더의 include 페이지로 상대경로, 절대경로 작성하기 -->
	<a href="jspTag/include.jsp">include 상대경로</a>
	<a href="/JSPBasic/jspTag/include.jsp">include 절대경로</a>
	
	<!-- MyServlet 맵핑 경로 /JSPBasic/apple 를 이용하여 상대경로 작성하기 -->
	<a href="../../apple">apple 상대경로</a> <!-- ../ 한번 거슬러 올라가며 path 폴더, ../ 한번 더 올라가면 JSPBasic 전체 폴더 (wepapp은 생략이라) -->
	<a href="/JSPBasic/apple">apple 절대경로</a>
	
	<!-- html 안에 있는 이미지 파일을 img 태그로 상대경로, 절대경로 작성하기 -->
	<img alt="제목" src="../../html/img/1.jpg"> <!-- 전체 폴더까지 올라간다음 다시 상세 폴더 적어가기 -->
	<img alt="제목" src="/JSPBasic/html/img/2.jpg">
	
	
</body>
</html>