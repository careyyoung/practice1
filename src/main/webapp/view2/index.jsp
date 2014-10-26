<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>


</head>
<body>
<%
		if(request.getAttribute("Error")!=null)
		{
			// 有错误，要进行打印输出
			List all = (List)request.getAttribute("Error") ;
			Iterator iter = all.iterator() ;
			while(iter.hasNext())
			{
	%>
				<li><%=iter.next()%>
	<%
			}
		}
	%>


      <form action="loginServlet" method="Post">
      		<table align="CENTER">
      			<tr><td colspan="2" align="CENTER"><h3><font color="#0000ff"><strong>用户登录</strong></font></h3></td></tr>
      			<tr>
      				<td align="right">用户名：</td>
      				<td><input type="text" name="username"/></td>
      			</tr>
      			<tr>
      				<td align="right">手机号：</td>
      				<td><input type="text" name="mobileNo" id="mobileNo"/></td>
      			</tr>
      			<tr>
      				<td>密&nbsp&nbsp码：</td>
      				<td><input type="password" name="password"/></td>
      			</tr>
      			<tr>
      				<td align="center"><input type="Submit" name="submit" value="提交" onclick="checkPhone()" /></td>
      				<td align="center"><input type="Reset" name="reset" value="重置"/></td>
      			</tr>
      		</table>
      </form>
</body>
</html>