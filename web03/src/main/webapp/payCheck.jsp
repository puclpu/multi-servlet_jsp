<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    	String m = request.getParameter("money");
    	int money = Integer.parseInt(m);
    	String c = request.getParameter("choice");
    	int choice = Integer.parseInt(c);
    	if (choice == 1) {
    		money -= 1000;
    	} else if (choice == 2){
    		money += 1000;
    	}
%><%=money %>