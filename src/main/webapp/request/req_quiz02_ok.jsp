<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
		request.setCharacterEncoding("utf-8");
    
    	String name = request.getParameter("name");
    	double cm = Double.parseDouble(request.getParameter("cm"));
    	double kg = Double.parseDouble(request.getParameter("kg"));
    %>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 	BMI공식 = kg / (cm/100 * cm/100)  -> 문자열이기 때문에 형변환 진행(실수)
	
	화면에 이름, 키, 몸무게, BMI지수를 출력합니다.
	
	if을 통해 BMI지수가 25이상 과체중, 18 이하라면 저체중, 나머지는 정상으로 출력 -->
	
	이름 : <%=name %><br>
	키 : <%=cm %><br>
	몸무게 : <%=kg %><br>
	BMI 지수 : 
	<% double bmi = kg / ((cm/100) * (cm/100));%>
	<% bmi = (Math.round(bmi*1000)/1000.0); %>
	<%=bmi %><br>
	비만도 : 
	<% if (bmi >= 25) { %>
		<%="과체중" %>
	<% } else if (bmi <= 18) { %>
		<%="저체중" %>
	<% } else { %>
		<%="정상" %>
	<% } %>



</body>
</html>