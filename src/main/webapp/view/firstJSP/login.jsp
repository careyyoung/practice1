<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login page</title>
</head>
<body>
<%@ page import="java.util.List,java.util.ArrayList" %>
<%
	String username = request.getParameter("username");
	//out.print(username);
	
	session.setAttribute("username", username);
	
	List onlineUserList = (List)application.getAttribute("onlineUserList");
	if(onlineUserList == null){
		onlineUserList = new ArrayList();
		application.setAttribute("onlineUserList", onlineUserList);
	}
	onlineUserList.add(username);
	
	response.sendRedirect("result.jsp");
		
%>
</body>
</html>