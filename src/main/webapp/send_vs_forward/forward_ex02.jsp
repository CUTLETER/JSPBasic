<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <!-- 중간에 데이터 끼워넣기도 가능함 -->
    <!-- 포워드는 request 객체를 들고 그대로 다음 페이지까지 가져감 -->
    
    
    <jsp:forward page="forward_ex03.jsp" >
    <jsp:param name="name" value="홍길동" />
    </jsp:forward>
    
    
    
    