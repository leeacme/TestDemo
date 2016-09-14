<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="Dao.*" %>
<%@ page import="Entity.*" %>


<% 
request.setCharacterEncoding("UTF-8"); 
response.setCharacterEncoding("UTF-8");
UserInfo user=new UserInfo();
user.setLoginID(request.getParameter("LoginID").toString());
user.setName(request.getParameter("Name").toString());
user.setPwd(request.getParameter("Pwd").toString());
user.setRole(Integer.parseInt(request.getParameter("Role")));
user.setDepict(request.getParameter("Depict").toString());

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>編輯界面</title>
</head>
<body>
<%=user.getName() %>
</body>
</html>