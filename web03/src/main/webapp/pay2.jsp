<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String imp_uid = request.getParameter("imp_uid");
    	String merchant = request.getParameter("merchant");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
고유 id : <%= imp_uid %>
상점 id : <%= merchant %>

</body>
</html>