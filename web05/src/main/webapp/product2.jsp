<%@page import="bean.ProductDTO"%>
<%@page import="bean.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.ProductDTO"></jsp:useBean>
    <jsp:setProperty property="id" name="dto"/>
    <%
    	ProductDAO dao = new ProductDAO();
    	ProductDTO one = dao.one(dto);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/project.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js">
</script>
<script type="text/javascript">
	$(function () {
		$('#basket').click(function() {
			$.ajax({
				url : "basket.jsp",
				data : {
					id : "<%=one.getId() %>",
					price : <%=one.getPrice() %>,
					name : "<%=one.getName() %>"
				},
				success : function() {
					choice = confirm('장바구니로 이동할까요?')
					if (choice) {
						location.href = "basket.jsp"
					}
				}
			}) /* ajax */
		}) /* b1 */
	})
</script>
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
		<!-- id가 null이면 회원가입 -->
		<!-- id가 null이 아니면 로그아웃 -->
		<%if (session.getAttribute("id") != null) { %>			
			<%= session.getAttribute("id")%> 님 환영합니다 <br>
		<%}%>
		
		<table border="1">
			<tr>
				<td rowspan="5"><img alt="" src="img/<%=one.getImg() %>" width="400px"></td>
				<td colspan="2" width="375px"><%=one.getName() %></td>
			</tr>
			<tr>
				<td>상품번호</td>
				<td><%=one.getId() %></td>
			</tr>
			<tr>
				<td>제조사</td>
				<td><%=one.getCompany() %></td>
			</tr>
			<tr>
				<td>상세설명</td>
				<td><%=one.getContent() %></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><%=one.getPrice() %></td>
			</tr>
			<tr>
				<td colspan="3">
					<button id="basket" class="btn btn-outline-primary">장바구니</button>
					<button id="order" class="btn btn-outline-primary">주문하기</button>
				</td>
			</tr>
		</table>
		
	</div> <!-- center -->
</div><!-- total -->
</body>
</html>