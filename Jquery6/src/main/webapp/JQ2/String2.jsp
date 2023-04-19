<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
	 /* String2.jsp */ 
	  String name = request.getParameter("name");
	
	  System.out.println(" String2.jsp ");
	  System.out.println(" name : "+name);
	%>
	
	처리된 이름정보는 <%=name %> 입니다. <br>