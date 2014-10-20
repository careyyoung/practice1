<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logout page</title>
</head>
<body>
<%@ page import="java.util.List,java.util.ArrayList" %>
<%
	String username =(String)session.getAttribute("username");
	session.invalidate();
	List onlineUserList = (List)application.getAttribute("onlineUserList");
	onlineUserList.remove(username);
	response.sendRedirect("result.jsp");
%>
</body>
</html>