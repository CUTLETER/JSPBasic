<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" onclick="get()">get 방식의 ajax 요청</button>
	<script>
		function get() {
			fetch("hello.ajax?name=홍길동&age=20").then(function(response) {
				return response.json();
			}).then(function(data) {
				console.log(data);
			})
		}
	</script>
	
	<hr>
	
	<button type="button" onclick="post()">ajax 포스트 요청</button>
	
	<script>
		// form 방식 - 데이터를 전송할 때
		// get 방식 - 데이터를 수신할 때
	
	
		function post() {
/* 			fetch("경로", {
				method : "post",
				headers : {},
				body : 데이터 */
				
			fetch("bye.ajax", {
				method : "post",
				headers : {
					"Content-type" : "application/json" // json 방식
					// "Content-type": "application/x-www-form-urlencoded" form방식
				},
				body : JSON.stringify({name: "홍길동", age: 20}) // json 방식
				// body : "name=홍길동&age=20" form 방식
			}).then(function(response) {
					return response.text();
				}).then(function(data) {
					console.log(data);
				})
		}
	</script>
</body>
</html>