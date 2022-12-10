<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    session.setAttribute("name", "hong");
    session.setAttribute("age", "100");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
세션 심기 완료 <a href="세션보기.jsp"><button>세션 확인하기</button></a>
</body>
</html>