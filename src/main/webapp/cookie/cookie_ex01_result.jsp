<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 1. 로그인에 활용할 쿠키 (로그인 성공하면 쿠키 만듦)
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	String check = request.getParameter("check");
    	
    	// id, pw가 같으면 로그인 성공이라고 가정하기
    	if (id.equals(pw)) {
    		
	    		// 로그인에 활용할 쿠키 (로그인 성공하면 쿠키 생성)
	    		Cookie cookie = new Cookie("user_id",id);
	    		cookie.setMaxAge(1800);
	    		response.addCookie(cookie);
    		
	    		// 아이디 기억하기에 체크했을 경우(값을 받아서), 거기에 사용될 쿠키 하나 생성하기
	    		// 아이디 기억하기 쿠키는 1번 페이지에서 사용됨
	    		// 만약 아이디 기억하기 쿠키가 있다면 input 태그에 value값을 찍어보기
	    		if (check != null) { // if (check.equals("check")) 이렇게 하면 체크 안 되어 있을 경우 null 값이 넘어와서 if문 오류남
		    			Cookie idCheck = new Cookie("idCheck",id); // 사용자가 로그인한 아이디
		    			idCheck.setMaxAge(3600);
		    			response.addCookie(idCheck);
	    		}
	    		
	    		
    		response.sendRedirect("cookie_ex01_welcome.jsp");
    	} else {
    		response.sendRedirect("cookie_ex01.jsp"); // 다시 입력 창으로
    	}
    	
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>