<%@page import="db_connect.MemberVO"%>
<%@page import="db_connect.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");

	MemberDAO dao = new MemberDAO();
	MemberVO bag = dao.one(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<h3><%=bag.getName() %>님의 회원정보입니다.</h3>
<table class="table">
    <thead>
      <tr>
        <th>id</th>
        <th>pw</th>
        <th>name</th>
        <th>tel</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><%=bag.getId() %></td>
        <td><%=bag.getPw() %></td>
        <td><%=bag.getName() %></td>
        <td><%=bag.getTel() %></td>
      </tr>
    </tbody>
  </table>
</body>
</html>