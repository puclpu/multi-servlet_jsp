<%@page import="bean.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="bean.ProductDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="dto"/>
    <%
    ArrayList<ProductDTO> list = null;
    String s = null;
    if (dto.getName() != null) {
    	if (session.getAttribute("basket") == null) {
    		/* 장바구니에 넣은 적이 없다. */
    		list = new ArrayList<ProductDTO>();
    	} else {
    		/* 장바구니에 넣은 적이 있다. */
    		list = (ArrayList<ProductDTO>)session.getAttribute("basket");
    	}
    	list.add(dto);
    	session.setAttribute("basket", list);
    	/* 어떤 것이 들어가도 괜찮을 때 object으로 바꾸어서 넣어줌 */
    } else {
    	if (session.getAttribute("basket") == null) {
    		s = "장바구니가 텅 비어있습니다.";
    	} else {
    		list = (ArrayList<ProductDTO>) session.getAttribute("basket");
    		/* 꺼낼 땐 arraylist로 다운캐스팅해서 꺼내주어야! */
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/project.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
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
		<%if (session.getAttribute("id") != null) { %>			
			<%= session.getAttribute("id")%> 님 환영합니다 <br>
		<%}%>
		<% if (session.getAttribute("basket") == null) { %>
				<%=s %> <br>
		<% } else { %>
		<hr>
		<%=list.size() %>개의 상품이 장바구니에 들어있습니다.
		<table class="table">
			<tr>
				<td>아이디</td>
				<td>상품명</td>
				<td>가격</td>
				<td>주문하기</td>
			</tr>
			<% for (ProductDTO one : list) { %>
					<tr>
						<td><%=one.getId() %></td>
						<td><%=one.getName() %></td>
						<td><%=one.getPrice() %></td>
						<td>
							<a href="order.jsp?id=<%=one.getId() %>">주문하기</a>
						</td>
					</tr>
			<% } %>
		</table>
		<% } %>
		

		
	</div> <!-- center -->
</div><!-- total -->
</body>
</html>