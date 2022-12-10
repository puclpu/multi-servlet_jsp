<%@page import="bean.MemberDAO"%>
<%@page import="bean.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.MemberDTO"></jsp:useBean>
	<jsp:setProperty property="*" name="dto"/> <!-- * : all -->
 	<!-- 받아서 가방에 넣을 변수가 20개인 경우, 받기 20줄 가방에 넣기 20줄, 총 40줄을 대신함 -->
    <!-- property : 변수지정   name : 객체이름(가방이름) -->
    <%
    	/* String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    	MemberDTO dto = new MemberDTO();
    	dto.setId(id);
    	dto.setPw(pw); */
    	
    	MemberDAO dao = new MemberDAO();
    	boolean result = dao.login(dto);
    	
    	/* 로그인이 성공했으면 반드시 해주어야 하는 세션처리!*/
    	if(result) {
    		session.setAttribute("id", dto.getId());
    		/* 브라우저와 서버와의 연결을 세션이라고 한다.
    			세션이 유지되는 동안ㅇ (로그아웃 하기 전 / 브라우저를 닫기 )
    			id를 서버에 저장해두었다가 여러 페이지를 만들 때 계속해서 사용하게 셋팅
    			attribute == 속성
    		*/
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/project.css">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
 
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
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
		로그인 결과 : 
			<%if (result) {%>
				성공
			<%} else {%>
				실패
			<%}%>
		<a href="logout.jsp">
			<button>로그아웃</button>
		</a>
	</div> <!-- center -->
</div><!-- total -->
</body>
</html>