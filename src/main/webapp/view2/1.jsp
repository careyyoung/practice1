<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../res/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript">

	function checkPhone(){
		var mobileNo = document.getElementById("mobileNo");
		var exp = /^(86)?((13\d{9})|(15[0,1,2,3,4,5,6,7,8,9]\d{8})|(18[0,5,6,7,8,9]\d{8}))$/;
		if(!mobileNo.value){
			alert("手机号不能为空。");
			mobileNo.focus();
			//document.getElementById("aaa").innerHTML="手机号不能为空。";
			return false;
		}else 
			if(!exp.test(mobileNo.value)){
				//document.getElementById("aaa").innerHTML="输入的手机号格式不对！";
				alert("输入的手机号格式不对！");
				mobileNo.focus();
				return false;
		}
		
		//alert("ok!");
		return true;
	}
	
	function checkEmail(){
		var email = document.getElementById("email");
		var exp = /\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/;
		if(!email.value){
			alert("Email不能为空。");
			email.focus();
			//document.getElementById("aaa").innerHTML="手机号不能为空。";
			return false;
		}else 
			if(!exp.test(email.value)){
				//document.getElementById("aaa").innerHTML="输入的手机号格式不对！";
				alert("输入的Email格式不对！");
				email.focus();
				return false;
		}
		
		//alert("ok!");
		return true;
	}  

</script>
<%@page import="java.util.*" %>
</head>
<body>
	<table>
		<tr>
			<td><%=new Date() %></td>
		</tr>
	
	</table>



<form id="form1" action="index.jsp" method="post">
      		<table align="CENTER">
      			<tr><td colspan="2" align="CENTER">
      					<h3><font color="#0000ff"><strong>用户登录</strong></font></h3>
      				</td>
      				
      			</tr>
      			<tr>
      				<td align="right">手机号：</td>
      				<td><input type="text" name="mobileNo" id="mobileNo"/></td>
      				<td align="center"><input type="Submit" name="submit" value="提交" onclick="return checkPhone();"/></td>
      			</tr>
      			
      			<tr>
      				<td align="right">Email：</td>
      				<td><input type="text" name="email" id="email"/></td>
      				<td align="center"><input type="Submit" name="submit" value="提交" onclick="return checkEmail();"/></td>
      			</tr>
      			
      			<!-- 
      				<tr>
      					<td align="CENTER" id="aaa"></td>
      				</tr>
      			 -->
      			<tr>
      				
      				<td align="CENTER"><input type="Reset" name="reset" value="重置"/></td>
      			</tr>
      		</table>
      </form>

</body>
</html>