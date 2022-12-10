<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    	// 자동 import : 클릭하고 + ctrl + shift + m
    
    	//1. 보낸 데이터를 받자.
    	String id = request.getParameter("id");
		String email = request.getParameter("email");
		String car = request.getParameter("car");

    	//2. jdbc프로그래밍
    	//2-1) 드라이버 설정
			Class.forName("com.mysql.cj.jdbc.Driver");
		//2-2) db연결 (url, id, pw)
			String url = "jdbc:mysql://localhost:3306/school?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password);
		//2-3) sql문 객체 생성
			String sql = "insert into person values (?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, email);
			ps.setString(3, car);
		//2-4) sql문 전송
			int result = ps.executeUpdate();

    	//3. 결과를 보내자.
    	
    	
%>