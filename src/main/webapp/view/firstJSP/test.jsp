<%@page import="java.awt.Color"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello, <%=request.getParameter("username") %>

<%
	String color = request.getParameter("color");
	if("red".equals(color)){
		request.getRequestDispatcher("red.jsp").forward(request, response);
	}else if("green".equals(color)){
		request.getRequestDispatcher("green.jsp").forward(request, response);
	}
%>

<%
	String color2 = request.getParameter("color2");
	if("red".equals(color2)){
		response.sendRedirect("red.jsp");
	}else if("green".equals(color2)){
		response.sendRedirect("green.jsp");
	}
%>

</body>
</html>