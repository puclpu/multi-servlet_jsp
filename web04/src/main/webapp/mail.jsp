<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>메일</h3>
<hr color="red">
<!-- 세션은 특정한 브라우저와의 연결을 의미 -->

<% if (session.getAttribute("id") != null) { %>
		로그인한 사람 <%= session.getAttribute("id") %>
	<%} else { 
			response.sendRedirect("login.html"); // 페이지 자동호출
			// 브라우저 login.html호출 명령
	} %>
</body>
</html>