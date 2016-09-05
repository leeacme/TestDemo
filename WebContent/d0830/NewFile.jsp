<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The First Jsp Demo</title>
</head>
<%!
int a=3;
public int GetD(){
	return a;
}
%>
<body>
我的jsp程序，当前时间是
<%
java.util.Date now=new java.util.Date();
out.println(now.toLocaleString());
%>
<%GetD();%>
</body>
</html>