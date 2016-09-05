<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*,java.text.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%!
public String name="My name is JSP and Servlet";
public int getLength(){
	return name.length();
}
public char first(){
	return name.charAt(0);
}
public char last(){
	return name.charAt(name.length()-1);
}
public String printFirst(){
	return name.substring(0,2);
}
public int jspSize(){
	return name.indexOf("JSP"); 
}
public String GetNowTime(){
	 Date currentTime = new Date();
	   SimpleDateFormat formatter = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
	   String dateString = formatter.format(currentTime);
	   return dateString;
}
%>

<body>
大家好，当前时间是：<%= GetNowTime() %><br/>
字符串长度：<%= getLength() %><br/>
字符串第一个字符：<%= first() %><br/>
字符串最后一个字符：<%= last() %><br/>
字符串第一个单词：<%= printFirst() %><br/>
字符串JSP位置：<%= jspSize() %>
</body>
</html>