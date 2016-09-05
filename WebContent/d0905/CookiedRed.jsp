<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>读取Cookie</title>
</head>
<body>
<%
Cookie[] cook=request.getCookies();
for(Cookie c :cook){
	String name=URLDecoder.decode(c.getValue().toString(),"UTF-8");
	out.print("id:"+c.getName()+"值:"+name+"</br>");	
}

%>


</body>
</html>