<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %> 
<%@ page import="java.util.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache"> 
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache"> 
<META HTTP-EQUIV="Expires" CONTENT="0"> 
</head>
<body>
<% 
request.setCharacterEncoding("UTF-8"); 

String rand = (String)session.getAttribute("rand"); 
String input = request.getParameter("rand"); 
if(rand.equals(input)){ 		
	
//out.print("<script>alert('验证通过！');</script>"); 
	
	String username="";
	String userpwd="";
	if(request.getParameter("username")!=null){
	username=request.getParameter("username").toString();
	
	}
	if(request.getParameter("userpwd")!=null){
		userpwd=request.getParameter("userpwd").toString();
	}
	System.out.println(username+"=="+userpwd);
	if(username.equals("admin") || userpwd.equals("adminpwd")){
		   session.setAttribute("userName",username); 
		   session.setAttribute("userPwd",userpwd); 
		out.print("<script>location.href='Main.jsp';</script>"); 	
	}
	else{
		out.print("<script>alert('账号或密码有误！');location.href='Login.jsp';</script>"); 
	}

} else{
out.print("<script>alert('请输入正确的验证码！');location.href='Login.jsp';</script>"); 
} 
%> 
</body>
</html>