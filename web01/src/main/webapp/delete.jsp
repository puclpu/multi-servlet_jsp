<%@page import="db_connect.BBS_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	int iid = Integer.parseInt(id); 
	BBS_DAO dao = new BBS_DAO();
	dao.delete(iid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
	background: orange;
	}
</style>
</head>
<body>

	<h3>홍길동님이 삭제한 게시판 내용입니다.</h3>
	<hr color="blue">
	아이디 >> <%= id %> <br>
	<hr color="blue">
	<a href="bbs.html">앞페이지로 가기</a>

</body>
</html>