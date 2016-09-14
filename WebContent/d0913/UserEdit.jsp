<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用戶註冊頁面</title>
</head>
<body>
<form action="UserControl.jsp">
<div id="box">
	<div id="dvTop">
	<a>用戶注冊</a>
	</div>
	
	<ul>
	<li>学号 : <input type="text" name="LoginID" id="LoginID"> </li>                                                 </li>
	<li>姓名 : <input type="text" name="Name" id="Name"></li>
	<li>密码 : <input type="password" name="Pwd" id="Pwd"></li>
	<li>角色 : <input type="text" name="Role"id="Role"></li>
	<li>描述 : <input type="text" name="Depict" id="Depict"></li>
	</ul>
	<input type="submit" value="提交">
</div>
</form>
</body>
</html>