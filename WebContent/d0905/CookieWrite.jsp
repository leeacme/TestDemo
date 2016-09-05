<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创建Cookie</title>
</head>
<body>
<%
String name=URLEncoder.encode("访问者","UTF-8");
Cookie c=new Cookie("usern",name);
c.setMaxAge(24*60*60);//一天
response.addCookie(c);
%>
<a href="CookiedRed.jsp">return</a>
</body>
</html>