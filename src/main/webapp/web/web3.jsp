<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>web3.jsp</title>
</head>
<body>
	<p> EL表达式</p>
	<table border="1">
		<tr bgcolor="#00ffff">
			<td bgcolor="#00ccff"> 12 + 13 </td> <td> ${12+13 } </td>
		</tr>
		
		<tr>
			<td bgcolor="#00ccff"> 25 - 15 </td> <td> ${25-15 } </td>
		</tr>
		
		<tr>
			<td bgcolor="#00ccff"> 12 * 13 </td> <td> ${12*13 } </td>		
		</tr>
		
		<tr>
			<td bgcolor="#00ccff"> 25/5 </td> <td> ${25/5 } </td>
		</tr>
		
	</table>
	
	<%
		Cookie cookie = new Cookie("name","name");
		response.addCookie(cookie);
	
	%>
	cookie中有：${cookie.name.value }
	
	
	<%
		String[] subject = {"英语","数学","语文","音乐","美术"};
		request.setAttribute("subject", subject);
	%>
	
	<br>
	<br>
	<br>
	使用 &lt;c:forEach&gt;标签遍历数组，结果如下：
	<br>
	<c:forEach items="${requestScope.subject }" var="keyword" varStatus="id" begin="1">
		subject数组的第${id.index }个元素是：&nbsp;${keyword }<br>
		
	
	</c:forEach>
	
	
</body>
</html>