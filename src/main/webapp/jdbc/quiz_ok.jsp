<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>부서 데이터</h3>
	<table>
		<tr>
			<th>부서 ID</th>
			<th>부서명</th>
			<th>매니저 ID</th>
			<th>부서 위치 ID</th>
		</tr>
	</table>	
		
	<h2>조회된 결과</h2>
		<c:if test="${info == null }">
			<p>해당 ID의 부서가 없습니다.</p>
		</c:if>
	
	<table>		
        <tr>
            <td>${info.departmentId}</td>
            <td>${info.departmentName}</td>
            <td>${info.managerId}</td>
            <td>${info.locationId}</td>
        </tr>
	</table>
	
</body>
</html>