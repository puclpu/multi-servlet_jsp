
<%@page import="db_connect.BBS_VO"%>
<%@page import="db_connect.BBS_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id"); // <input name = "id"> 외부에서 입력한 데이터 타입은 모두 String 
	int iid = Integer.parseInt(id);
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
	BBS_VO bag = new BBS_VO();
	bag.setId(iid);
	bag.setTitle(title);
	bag.setContent(content);
	bag.setWriter(writer);
	
	BBS_DAO dao = new BBS_DAO();
	dao.insert(bag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	background: orange;
}
</style>
</head>
<body>
<h3>홍길동님이 작성한 게시판 내용입니다.</h3>
<hr color="blue">
아이디 >> <%= id %> <br>
제목 >> <%= title %> <br>
내용 >> <%= content %> <br>
작성자 >> <%= writer %> <br>
<hr color="blue">
<a href="bbs.html">앞페이지로 가기</a>
</body>
</html>