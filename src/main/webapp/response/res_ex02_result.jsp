<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 아이디가 abc, 비밀번호가 1234라면 로그인 성공이라 가정하고 ex02_success로 리다이렉트 하기
    	 아이디나 비밀번호가 틀린 경우라면 ex02_fail로 리다이렉트 시키기 --%>
    	 
    <%
    	request.setCharacterEncoding("utf-8");
    	
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	
    	if (id.equals("abc") && pw.equals("1234")) {
    		response.sendRedirect("res_ex02_success.jsp");
    	} else {
    		response.sendRedirect("res_ex02_fail.jsp");
    	}
    	
    
    
    %>	 
    
    