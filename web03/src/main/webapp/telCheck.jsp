<%@page import="java.util.Random"%><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
	String tel = request.getParameter("tel");
	
	// 앞의 세글자를 추출하여, 각 조건에 맞게 값을 할당
	// 010 -> 1111, 011 -> 2222, 나머지 -> 3333
	// subString(index) : index 뒤를 다 추출
	// subString(start, end+1) : start index부터 end index까지를 추출
	
	String result = tel.substring(0, 3);
	if (result.equals("010")) {
		result = "1111";
	} else if (result.equals("011")) {
		result = "2222";
	} else {
		result = "3333";
	}
	
	// 랜덤한 숫자 2자리를 만들어서 붙여주기
	Random r = new Random();
	int no = r.nextInt(90) + 10; // 0~89 -(+10)-> 10~99
	result += no;
%><%= result %>