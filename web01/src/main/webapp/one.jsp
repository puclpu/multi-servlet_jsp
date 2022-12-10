<%@page import="db_connect.BBS_VO"%>
<%@page import="db_connect.BBS_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 
    	1. 데이터 받아오기
    	2. db처리
    	3. 결과출력
     -->
<%
String no = request.getParameter("id");

BBS_DAO dao = new BBS_DAO();
BBS_VO bag = dao.one(Integer.parseInt(no));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

	<table border="1">
		<tr>
			<td>항목명</td>
			<td>데이터</td>
		</tr>
		<tr>
			<td>번호</td>
			<td><%=bag.getId()%></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=bag.getTitle()%></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><%=bag.getWriter()%></td>
		</tr>
	</table>
</body>
</html>