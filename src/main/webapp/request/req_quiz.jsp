<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>req_quiz_ok로 post 방식으로 데이터를 넘기고, ok페이지에서는 화면에 출력하기</h3>

	<!-- form 태그는 사용자가 입력한 값을 서버(우리가 만드는 프로젝트)에 전송할 때 사용됨 -->
	<!-- form 안에 input 태그는 name '속성'을 지정하게 되는데 name은 서버에서 찾아쓰는 '이름=key'이 됨, 꼭 적어야 함 -->
	
	<form action="req_quiz_ok.jsp" method="post">
		<!-- form 태그 안에 들어갈 input 태그 종류 -->
		
		아이디 : <input type="text" name="id" placeholder="placeholder = 힌트 박스" size="20"><br>
		비밀번호 : <input type="password" name="pw"><br>
		
		<!-- checkbox, radio 속성은 '반드시' name 속성을 사용해서 하나의 그룹으로 묶어 주어야 함 -->
		
		관심분야 : <!-- 여러 개 체크 가능함 -->
		<input type="checkbox" name="inter" value="java"> java
		<input type="checkbox" name="inter" value="jsp"> jsp
		<input type="checkbox" name="inter" value="database"> database
		<input type="checkbox" name="inter" value="python"> python
		<br>
				
		전공분야 : <!-- 그룹으로 묶어주면 그중 1개의 선택지에만 체크 가능함 -->
		<input type="radio" name="major" value="경영학과"> 경영학과
		<input type="radio" name="major" value="컴퓨터공학과"> 컴퓨터공학과
		<input type="radio" name="major" value="철학과"> 철학과
		<input type="radio" name="major" value="수학과"> 수학과
		
		<br>
		입사일 :
		<input type="date" name="regdate">
		
		<br>
		지역 :
		<!-- select 태그 자체에다 name를 지정해야 함, 옵션은 select 태그의 선택지일 뿐 -->
		<select name="region">
			<option>서울</option>
			<option>경기도</option>
			<option>부산</option>
			<option>대구</option>
			<option>강원도</option>
		</select>
		
		<br>
		자기소개 :
		<!-- 긴 글을 담아내는 박스, rows 박스의 세로 길이, cols 박스의 가로 길이 -->
		<textarea rows="5" cols="40" name="box"></textarea>
		
		<br>
		<!-- form 안 데이터를 서버로 전송하는 버튼-->
		<input type="submit" value="확인">
		
		<!-- form 안에 들어 있는 데이터 초기화 -->
		<input type="reset" value="다시 작성하기"> 
		
		<!-- 자바 스크립트를 사용해야 버튼에 기능을 붙일 수 있음 -->
		<input type="button" value="버튼">
		
		
	</form>
	
</body>
</html>