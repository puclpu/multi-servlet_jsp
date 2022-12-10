<%@page import="db_connect.ProductVO"%>
<%@page import="db_connect.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    	1. 입력
    	2. 처리 (db처리 -dao, vo)
    	3. 출력 (html)
     -->
     <!-- 1. 대이터를 product_insert.html에서 입력해서 넘긴 값을 받으면 될 것 -->
     <%
     	String id = request.getParameter("id");

     	
     	
     	ProductDAO dao = new ProductDAO();
     	dao.delete(id);
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품 삭제 정보 확인</h3>
<hr>
삭제된 id : <%=id %>
<hr>
<a href="product_insert.html">상품등록페이지로</a> <br>
<a href="product.html">첫페이지로</a>
</body>
</html>