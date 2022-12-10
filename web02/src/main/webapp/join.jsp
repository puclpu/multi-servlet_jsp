<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String pw2 = request.getParameter("pw2");
    String name = request.getParameter("name");
    String year = request.getParameter("year");
    String month = request.getParameter("month");
    String day = request.getParameter("day");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String c_num = request.getParameter("c_num");
    String tel = request.getParameter("tel");
    String[] interest = request.getParameterValues("interest");
    String interests = "";
    for(String s : interest) {
    	interests = interests + s; 
    }
    String totel = request.getParameter("totel");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<td>아이디</td>
		<td><%=id %></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=pw %></td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td><%=year %>년 <%=month %>월 <%=day %>일</td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%=name%></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><%=gender%></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><%=email %></td>
	</tr>
	<tr>
		<td>휴대전화</td>
		<td><%=c_num %><%=tel %></td>
	</tr>
	<tr>
		<td>관심사</td>
		<td><%=interests %></td>
	</tr>
	<tr>
		<td>하고싶은 말</td>
		<td><%=totel%></td>
	</tr>
</table>
</body>
</html>