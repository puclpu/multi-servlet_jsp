<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie c1 = new Cookie("name", "honggildong"); //name, value
    	Cookie c2 = new Cookie("age", "100");
    	response.addCookie(c1);
    	response.addCookie(c2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	브라우저에 쿠키 심음 <a href="쿠키확인.jsp"><button>쿠키 확인하기</button></a>
</body>
</html>