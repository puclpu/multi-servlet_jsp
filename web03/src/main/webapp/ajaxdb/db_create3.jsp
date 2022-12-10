<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    	// 자동 import : 클릭하고 + ctrl + shift + m
    
    	//1. 보낸 데이터를 받자.
    	String id = request.getParameter("id");
    	//2. jdbc프로그래밍
    	//2-1) 드라이버 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
		//2-2) db연결 (url, id, pw)
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
		//2-3) sql문 객체 생성
			String sql = "select * from drug where id =?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			
		//2-4) sql문 전송
			ResultSet rs = ps.executeQuery();
			String company = null;
			String name = null;
			String color = null;
			if (rs.next()) {
				company = rs.getString(2);
				name = rs.getString(3);
				color = rs.getString(4);
			}

    	//3. 결과를 보내자.
%>
<%= company + name + color%>