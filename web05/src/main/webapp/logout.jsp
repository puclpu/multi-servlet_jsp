<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate(); /* 세션 끊기 */
	response.sendRedirect("member.jsp");
%>