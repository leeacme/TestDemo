<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>B页面</title>
</head>
<body>
<% 
String queryString=request.getQueryString();
String querstr=URLDecoder.decode(queryString,"UTF-8");
out.println("解码后查询的字符串为:"+ querstr +"</br>");
//下面就是字符分割
String var[] =querstr.split("&");
for(int i=0;i<var.length;i++){
	String vars[]=var[i].split("=");
	out.println(vars[0]+" : "+ vars[1] +"</br>");
}
%>
</body>
</html>