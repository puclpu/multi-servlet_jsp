<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
</script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function name() {
			comment = $('#comment').val()
			$('#d2').append(comment + '<br>')
		})
	})
</script>
</head>
<body>
<h3>뉴스</h3>
<hr color="red">
<!-- mail.jsp를 클릭했을 때, 1) 로그인이 안 되었으면, 로그인 페이지로 자동으로 넘어가게 -->
<!-- 					 2) 로그인이 되었으면, 로그인 사람 표시 -->
<% if (session.getAttribute("id") != null) { %>
		<%-- 로그인한 사람 <%= session.getAttribute("id") %> --%> 
		<div id = "d1" style="background:pink; width: 500px;"></div>
		<input id = "comment" placeholder="댓글을 입력하세요">
		<button id = "b1">등록</button> <br>
		<div id = "d2"></div>
	<%} else { %>
	<script type="text/javascript">
			alert('로그인 화면으로 넘어갑니다')
			location.href = "login.html"
	</script>
	<% } %>
</body>
</html>