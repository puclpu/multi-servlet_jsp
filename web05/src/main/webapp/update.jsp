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
			<form action="update2.jsp">
				<input name="id" type="hidden" value="<%=one.getId()%>">
				<input name="writer" type="hidden" disabled="disabled" value="<%= session.getAttribute("id") %>">
				<table class="table">
					<tr>
						<td colspan="2" width="700">
							<input name="title" value="<%=one.getTitle()%>" placeholder="제목을 입력해주세요." required="required">
						</td>
					</tr>
					<tr>
						<td colspan="2" width="700">
							<input name="content" value="<%=one.getContent() %>" placeholder="내용을 입력해주세요." required="required">
						</td>
					</tr>
					
					
					<tr>
						<td align="right">
							<button type="submit">글쓰기 완료</button>
						</td>
					</tr>
				</table>
			</form>
		</div> <!-- center -->
	</div> <!-- total -->
</body>
</html>