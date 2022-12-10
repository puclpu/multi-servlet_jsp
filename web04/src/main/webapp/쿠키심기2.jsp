<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Cookie c1 = new Cookie("site","naver");
    	Cookie c2 = new Cookie("callcenter","15881234");
    	Cookie c3 = new Cookie("company","multi");
    	response.addCookie(c1);
    	response.addCookie(c2);
    	response.addCookie(c3);
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키 심기 완료 <a href="쿠키보기2.jsp"><button>쿠키 확인하기</button></a> 
</body>
</html>