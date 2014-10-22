<%@page import="javax.tools.JavaCompiler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>firstJSP</title>

<script language="javascript">
	function aa() {
		var tt = document.getElementById("select").value;
		alert(tt);
	}
	function xx() {
		var kk = document.getElementById("select").options;
		for (var i = 0; i < kk.length; i++) {
			if (kk[i].value == 30) {
				kk[i].selected = true;
				break;
			}
		}
	}
</script>

</head>
<body>
	<%
		out.println("Hello jsp<br>");
		out.println("大家好<br>");
	%>
	<%=new java.util.Date()%>



	<form action="test.jsp" method="post">
		<input type="radio" name='color' value='red'>红色 <input
			type="radio" name='color' value='green'>绿色 <input
			type="submit" value="forward提交" />
	</form>

	<form action="test.jsp" method="post">
		<input type="radio" name='color2' value='red'>红色 <input
			type="radio" name='color2' value='green'>绿色 <input
			type="submit" value="redirect提交" />
	</form>

	<form action="login.jsp" method="post">
		用户名：<input type="text" name='username'> <input type="submit"
			value="登录" onclick="login()" />
	</form>
	<select name="select" onchange="aa()" id="select">
		<option value="0">呵呵</option>
		<option value="1">哈哈</option>
		<option value="2">嘿嘿</option>
		<option value="3">等等</option>
		<option value="50">试试</option>
		<option value="30">测试</option>
		<option value="35">感觉</option>
	</select>
	<input name="ttt" type="button" id="ttt" onclick="xx()" />


</body>
</html>