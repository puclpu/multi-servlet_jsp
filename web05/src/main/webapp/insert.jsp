<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<style type="text/css">
	table {
		text-align: left;
	}
</style>
</head>
<body>
	<div id="total">
		<div id="top">
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div id="top2">
			<jsp:include page="top2.jsp"></jsp:include>
		</div>
		<div id="center">
			<hr>
			<%
				if (session.getAttribute("id") != null) {
			%>
			<%=session.getAttribute("id")%>님 환영합니다.
			<%
				}
			%>
			<hr>	
			<form action="insert2.jsp">
				<input name="writer" type="hidden" value="<%= session.getAttribute("id") %>">
				<table class="table">
					<tr>
						<td colspan="2" width="700">
							<input name="title" placeholder="제목을 입력해주세요.">
						</td>
					</tr>
					<tr>
						<td colspan="2" width="700">
							<input name="content" placeholder="내용을 입력해주세요.">
						</td>
					</tr>
					
					
					<tr>
						<td align="right">
							<button type="submit">글쓰기 완료</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>