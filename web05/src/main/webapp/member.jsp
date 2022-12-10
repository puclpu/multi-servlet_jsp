<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/project.css">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
 
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div id = "total">
	<div id = "top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id = "top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id = "center">
		<!-- id가 null이면 회원가입 -->
		<!-- id가 null이 아니면 로그아웃 -->
		<%if (session.getAttribute("id") == null) {
			%>
			<form action="login.jsp">
				<table class="table table-hover">
					<tr>
						<td>아이디</td>
						<td><input name = "id"></td>
					</tr>
					<tr>
						<td>패스워드</td>
						<td><input name = "pw"></td>
					</tr>
					<tr>
						<td colspan="2">
						<button type="submit" class="btn btn-primary">로그인처리</button>
						</td>
					</tr>
				</table>
			</form> <!-- login -->
			
		<%} else{%>
		<%= session.getAttribute("id")%> 님 환영합니다
			<a href="logout.jsp">
				<button class="btn btn-primary">로그아웃</button>
			</a>
		<%} %><!-- else -->
		
		<!-- 회원가입 -->
		<hr color="blue">
		<h3>회원 가입 정보 입력</h3>			
		<form action="member2.jsp">
			<table class="table table-hover">
				<tr>
					<td>아이디</td>
					<td><input name = "id"></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input name = "pw"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input name = "name"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input name = "tel"></td>
				</tr>
				<tr>
					<td colspan="2">
					<button type="submit" class="btn btn-primary">회원가입 처리</button>
					</td>
				</tr>
			</table>
		</form>
	</div> <!-- center -->
</div><!-- total -->
</body>
</html>