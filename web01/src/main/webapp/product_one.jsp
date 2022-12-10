<%@page import="db_connect.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	ProductDAO dao = new ProductDAO();
    	ProductVO bag = dao.one(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style type="text/css">
h3 {
	color: darkkhaki;
}
</style>
</head>
<body>
<h3>상품상세</h3> <br>
<table class="table table-hover">
	<tr class="table-warning">
		<th>상품번호</th>
		<th>상품명</th>
		<th>내용</th>
		<th>가격</th>
		<th>회사</th>
		<th>이미지</th>
	</tr>
	<tr>
		<td><%=bag.getId() %></td>
			<td><%=bag.getName() %></td>
			<td><%=bag.getContent() %></td>
			<td><%=bag.getPrice() %></td>
			<td><%=bag.getCompany() %></td>
			<td>
				<img alt="" src="img/
				<%=bag.getImg() %>
				" width= 150px;>
			</td>
	</tr>
	
</table>
</body>
</html>