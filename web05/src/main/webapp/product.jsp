<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/project.css">
</head>
<body>
<div id = "total">
	<div id = "top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id = "top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id = "center">
		<!-- id가 null이면 회원가입 -->
		<!-- id가 null이 아니면 로그아웃 -->
		<%if (session.getAttribute("id") != null) { %>			
			<%= session.getAttribute("id")%> 님 환영합니다 <br>
		<%}%>
		
		<hr>
		<!-- 1) dao 이용해서 상품목록 다 가져오자 -->
		<%
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> list = dao.list();
		%>
		<!-- 2) 가지고 온 데이터를 테이블로 만들어 보여주자 -->
		<table border="1">
			<tr>
				<th width="250px">상품명</th>
				<th width="250px">상품가격</th>
				<th width="250px">상품이미지</th>
			</tr>
			<%
			for (ProductDTO dto : list) {
				%>
				<tr>
					<td><a href="product2.jsp?id=<%=dto.getId() %>"><%=dto.getName() %></a></td>
					<td><%=dto.getPrice() %></td>
					<td><img alt="<%=dto.getImg() %>>" src="img/<%=dto.getImg() %>" width="150px" height="150px"></td>
				</tr>
				<%
			}
			%>
		</table>
	</div> <!-- center -->
</div><!-- total -->
</body>
</html>