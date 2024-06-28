<%@page import="com.model.DepartmentDTO"%>
<%@page import="com.model.UserDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
        // 받을 값은 XXX
                            	// 데이터 조회만 하면 됨
                            	// DAO 객체 생성하기
                            	// new DepartmentDAO(); 이렇게 XXXXXX
                            	
                            	UserDAO dao = UserDAO.getInstance(); // 싱글톤 객체 생성
                            	ArrayList<DepartmentDTO> list = dao.getList(); // 부서 조회 메소드 호출
                            
                            	// 리스트를 다음 페이지로 전달시키기 위해 request에 값 넣기
                            	request.setAttribute("list", list); // request에 저장시킴
                            	
                            	// forward로 결과화면 이동시키기
                            	request.getRequestDispatcher("select_list.jsp").forward(request, response);
        %>
    