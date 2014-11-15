<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] stuName = {"name1","name2","name3","name4"};
	%>
	<table border="1" align="center"  height="150" width="300">
		<tr>
			<td align="center" width="60">
				编号
			</td>
			<td align="center" width="60">
				姓名
			</td>
		</tr>
		<%
			for(int i=0; i<stuName.length; i++){
		%>	
		<tr>
			<td align="center" width="60">
				<%=i+1 %>
			</td>
			<td align="center" width="60">
				<%=stuName[i] %>
			</td>
		</tr>
		<%
			}
		%>
	</table>
	
	<table  height="150" width="300">
		<tr>
			<td width="87" height="32">
				<div align="right">姓名：</div>
			</td>
			<td width="220">
				<label>
					<input type="text" name="textfield" />
				</label>
			</td>
		</tr>
		<tr>
			<td height="33">
				<div align="right">密码：</div>
			</td>
			<td>
				<label>
					<input type="password" name="textfield2" />
				</label>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<label>
					<div align="right"> </div>
				</label>
				<label>
					<div align="center">
						<input type="submit" name="Submit" value="提交" />
						<input type="reset" name="Submit2" value="重置" />
					</div>
				</label>
			</td>
		</tr>
	</table>
	
	在jsp页面中输出金字塔：<br>
	<table  height="150" width="300">
		<% 
			String str="";
			for(int i=0; i<10; i++){
				for(int j=10; j>i; j--){
					str += "&nbsp;";
				}
				for(int j=0; j<i; j++){
					str += "*&nbsp;";
				}
				str += "<br>";
			}
		%>
		<%=str %>
	
	</table>
	
	
	<div>
		<%
			List list = new ArrayList();
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = null;
			String url = "jdbc:mysql://localhost:3306/test";
			String username = "root";
			String password = "root";
			conn = DriverManager.getConnection(url, username, password);
			
			String sql = "select dName from tb_deptname";
			Statement statement;
			
			statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			while(rs.next()){
				String id = rs.getString(1);
				list.add(id);
			}
			
			//System.out.print(list.size());
		%>
	<select>
	
		<%
			for(int i = 0; i<list.size(); i++){
		%>
		<option value="<%=list.get(i)%>">
			<%=list.get(i) %>
		</option>
	
		<%		
			}
		%>
	</select>
		
		
	</div>
	
	
	<form action="./web1.jsp" method="post">
		<table height="150" width="300">
			<tr>
				<td align="center" colspan="4" height="20"></td>
			</tr>
			<tr>
				<td align="center" colspan="4">用户登录</td>
			</tr>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" name="pwd"> </td>
			</tr>
			<tr>
				<td><input type="submit" name="submit"/></td>
				<td><input type="reset" name="reset"/></td>
			</tr>
		
		</table>
	
	</form>
	<%
		if((request.getParameter("name")!=null) && (request.getParameter("pwd")!=null)){
	%>
	<tr>
		<td>用户名参数为：</td>
		<td>
			<%=request.getParameter("name") %>
		</td>
	</tr>
	
	<tr>
		<td>密码参数为：</td>
		<td>
			<%=request.getParameter("pwd") %>
		</td>
	</tr>
	
	<tr><td align="center" colspan="4" height="20"></td></tr>
	
	<%} %>
	
	
	
	
</body>
</html>






