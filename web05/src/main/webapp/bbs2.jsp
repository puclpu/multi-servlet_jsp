<%@page import="bean.BbsDTO"%>
<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.BbsDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
    <%
    BbsDAO dao = new BbsDAO();
    BbsDTO one = dao.one(dto);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
</script>
<script type="text/javascript">
	$(function () {
		$('#b1').click(function() {
			location.href = "update.jsp?id=<%=one.getId()%>"
		})
		
		$('#b2').click(function() {
			choice = confirm('이 글을 삭제하시겠습니까?')
			if (choice) {
				location.href = "delete.jsp?id=<%=one.getId()%>"
			}
		})
	})
</script>
<link rel="stylesheet" href="css/project.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style type="text/css">
table{
	text-align: left;
}
</style>
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
		<%}%>
		<hr>
		<table class="table">
			<tr>
				<td>
					<a href="bbs.jsp">
						<button>목록</button>
					</a>
				</td>
				<%
				if(session.getAttribute("id") != null && session.getAttribute("id").equals(one.getWriter())) {
				%>					
					<td>
						<button id="b1">수정</button>
						<button id="b2">삭제</button>
					</td>
				<%}%>
			</tr>
			<tr>
				<th colspan="2"><%=one.getTitle() %></th>
			</tr>
			<tr style="font-size: 15px">
				<td><%=one.getWriter() %></td>
				<td><%=one.getId() %></td>				
			</tr>
			<tr>
				<td colspan="2"><%=one.getContent() %></td>
			</tr>
		</table>
	</div> <!-- center -->
</div><!-- total -->
</body>
</html>