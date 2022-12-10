<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    BbsDAO dao = new BbsDAO();
    int result = dao.delete(id);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if (result == 1) {%>
			<script type="text/javascript">
			location.href = "bbs.jsp";
			</script>
		<%} else {%>
			alert('삭제에 실패하였습니다.');
		<%}%>
</body>
</html>