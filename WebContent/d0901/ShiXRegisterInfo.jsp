<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<html>
<% request.setCharacterEncoding("UTF-8"); 
String username="";
String userpwd="";
String way="";
if(request.getParameter("username")!=null){
username=request.getParameter("username");
}
if(request.getParameter("userpwd")!=null){
	userpwd=request.getParameter("userpwd");
}
if(request.getParameter("ways")!=null){
	way=request.getParameter("ways");
}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
姓名：<%=username%><br>
密码：<%= userpwd%><br>
信息来源：<%= way%><br>
</body>
</html>