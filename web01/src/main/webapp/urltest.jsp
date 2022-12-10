<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String[] id_list = {"apple", "park", "friday"};
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 배열에 있는 사용자를 모두 링크할 수 있는 코드를 만들어보세요.
	// for 문 사용
	for(String id : id_list) {
		%>
		<a href="http://localhost:8989/web01/member_one.jsp?id=<%=id %>">
			<%=id %>인 사람의 정보
		</a> <br>
		<%
	}
%>
</body>
</html>