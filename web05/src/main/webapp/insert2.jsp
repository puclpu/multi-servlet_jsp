<%@page import="bean.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.BbsDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
    <%
    	BbsDAO dao = new BbsDAO();
    	int result = dao.insert(dto);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		<% if (result != 1) { %>
				alert('등록에 실패하였습니다.')
			<% } %>
		location.href = "bbs.jsp"
	</script>
</body>
</html>