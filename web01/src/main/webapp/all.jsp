<%@page import="db_connect.BBS_VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.BBS_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
BBS_DAO dao = new BBS_DAO();
ArrayList<BBS_VO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		게시물 전체 개수 :
		<%=list.size()%></h3>
		<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
		</tr>
	<%
		for(BBS_VO bag : list) {
	%>
		<tr>
			<td><%=bag.getId() %></td>
			<td>
				<a href="http://localhost:8989/web01/one.jsp?id=<%=bag.getId()%>"><%=bag.getTitle() %></a>
			</td>
			<td><%=bag.getContent() %></td>
			<td><%=bag.getWriter() %></td>
		</tr>
	<%		
		} // for
	%>
		</table>
</body>
</html>