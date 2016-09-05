<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<script type="text/javascript">
function CheckUser() {
	var userName=document.getElementById("txtName").value;
	if(userName.length <= 0){	
		alert("账户或密码不能爲空!");
		return false;
	}else{
		return true;
	}
}
</script>
</head>
<body>
<form method="post" action="RegisterInfo.jsp" onsubmit="return CheckUser()">
姓名:<input type="text" id="txtName" name="txtName" /><br>
密碼:<input type="password" id="txtPwd" name="txtPwd" /><br>
<input type="submit" name="btSub" id="提交"/>
</form>
</body>
</html> 