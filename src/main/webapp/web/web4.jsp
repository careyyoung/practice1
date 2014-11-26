<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World jQuery!</title>
<script type="text/javascript" src="../res/jquery/jquery-1.11.1.js"></script>
</head>
<body>
    <input id="btnShow" type="button" value="显示" />
    <input id="btnHide" type="button" value="隐藏" /><br />
    <div id="divMsg" width="100px" height="100px" >Hello World！</div>
    <input id="btnChange" type="button" value="修改内容为 Hello World, too！" />
    <script type="text/javascript" >
        $("#btnShow").bind("click", function(event) { $("#divMsg").show(); });
        $("#btnHide").bind("click", function(event) { $("#divMsg").hide(); });
        $("#btnChange").bind("click", function(event) { $("#divMsg").html("Hello World, too！").show(); });      
    	$("#btnChange")
    </script>
</body>
</html>