<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %> 
<%@ page import="java.util.*" %>
<html>
<%
String username="";
String userpwd="";
String yzm="";
if(session.getAttribute("userName")!=null){
	username=session.getAttribute("userName").toString();
}
if(session.getAttribute("userPwd")!=null){
	userpwd=session.getAttribute("userPwd").toString();
}
if(session.getAttribute("rand")!=null){
	yzm=session.getAttribute("rand").toString();
}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证码</title>
</head>
<body>
用户名:<%=username  %><br>
密码&nbsp;:<%=userpwd  %><br>
验证码:<%=yzm  %><br>

</body>
</html>