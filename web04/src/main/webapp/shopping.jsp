<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쇼핑</h3>
<hr color="red">
<!-- 세션은 특정한 브라우저와의 연결을 의미 -->
로그인한 사람 <%=session.getAttribute("id") %>
<% if (session.getAttribute("id") != null) { %>
		<%-- 로그인한 사람 <%= session.getAttribute("id") %> --%>
		<ul>
			<li>스타벅스 텀블러</li>
			<li>어그 슬리퍼</li>
			<li>아디다스 가젤</li>
			<li>나이키 에어포스</li>
			<li>자라 패딩</li>
		</ul>
	<%} else { %> 
			/* response.sendRedirect("login.html"); // 페이지 자동호출
			// 브라우저 login.html호출 명령 */
			<script type="text/javascript">
				alert('로그인페이지로 이동')
				location.href = "login.html"
			</script>
	<%} %>
</body>
</html>