<%@page import="com.model.DepartmentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%-- 코어 라이브러리를 c 태그로 쓰겠다는 의미 --%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
    
    <%
//        select_result 페이지에서 조회한 결과를 얻기
//        ArrayList<DepartmentDTO> list = (ArrayList<DepartmentDTO>)request.getAttribute("list"); -- jstl 때문에 주석 처리
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- null이 아닌 부서의 수 : <%=list.size()%> -- jstl 때문에 주석 처리 --%>
	null이 아닌 부서의 수 : ${fn:length(list) }
	
	<h3>부서 데이터</h3>
	<table>
		<tr>
			<th>부서 ID</th>
			<th>부서명</th>
			<th>매니저 ID</th>
			<th>부서 위치 ID</th>
		</tr>
		
		
		
		<c:forEach var="dto" items="${list }">
		<tr>
			<td>${dto.departmentId }</td>
			<td>${dto.departmentName }</td>
			<td>${dto.managerId }</td>
			<td>${dto.locationId }</td>
		</tr>
		</c:forEach>
		
		<!-- jstl 때문에 아래 다 주석 처리 -->
		<%-- <%
				for(DepartmentDTO dto : list) {
				%>
		<tr>
			<td><%=dto.getDepartmentId() %></td>
			<td><%=dto.getDepartmentName() %></td>
			<td><%=dto.getManagerId() %></td>
			<td><%=dto.getLocationId() %></td>
		</tr>
		<% } %> --%>
	</table>
	
</body>
</html>