<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		액션 태그 - 액션 태그는 추가적으로 종속되는 태그가 없으면 끝부분을 받드시 /> 마감처리 해야 함
		<jsp : 기능 />
	 --%>
	 
	 <jsp:forward page="forward_ex02.jsp"/> <!-- 중간에 적을 내용 없으면 '닫아주는 짝꿍 태그' 없애고 /> 로 마무리 처리하기 -->
</body>
</html>