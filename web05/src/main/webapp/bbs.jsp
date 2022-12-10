<%@page import="bean.BbsDAO"%>
<%@page import="bean.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	BbsDAO dao = new BbsDAO();
    	ArrayList<BbsDTO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/project.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
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

		<%if (session.getAttribute("id") != null) { %>			
			<%= session.getAttribute("id")%> 님 환영합니다 <br>
			<a href="insert.jsp">글쓰기</a>
		<%}%>
		<hr>
		<table class="table">
			<tr>
				<th width="250px">아이디</th>
				<th width="250px">제목</th>
				<th width="250px">작성자</th>
			</tr>
			<%for(BbsDTO dto : list) {%>
				<tr>
					<td><%=dto.getId() %></td>
					<td>
						<a href="bbs2.jsp?id=<%=dto.getId() %>">
							<%=dto.getTitle() %>
						</a>
					</td>
					<td><%=dto.getWriter() %></td>
				</tr>
			<%} %>
		</table>
	</div> <!-- center -->
</div><!-- total -->
</body>
</html>