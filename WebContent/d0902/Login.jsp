<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" %> 
<%@ page language="java" import="java.sql.*" errorPage="" %> 
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_easyui/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_easyui/locale/easyui-lang-zh_CN.js"></script>
<title>用户登录</title> 
<script language="javascript"> 
function loadimage(){ 
document.getElementById("randImage").src = "ValidateImg.jsp?"+Math.random(); 
} 
function CheckUser(){		
	var userName=$("#username").val();
	var userPwd=$("#pwd").val();
	if(userName=="" && userPwd==""){
		alert("用户名或密码未填写！");
		return;
	}
	if($("#iprand").val()==""){
		alert("请填写验证码!");
		return false;
	};
 location.href = "validate.jsp?username="+userName+"&userpwd="+userPwd+"&rand="+$("#iprand").val();//location.href实现客户端页面的跳转  
}
</script> 

<style type="text/css">
#box{
width: 500px;
height: auto;
text-align: center;
}
#dvTop{
width: auto;
height: auto;
text-align: center;
font-weight: bold;
font-size: 22px;
}
ul li{
list-style: none;
height: 40px;
font-size: 20px;
margin: auto;
text-align: left;
}
ul input{
height:30px;
width:300px;
font-size: 18px;
}
//"validate.jsp
</style>

</head> 
<body > 
<div id="box">
	<div id="dvTop">
	<a>登陆</a>
	</div>
	<ul>
	<li>姓名 : <input type="text" name="username" id="username"></li>
	<li>密码 : <input type="password" name="pwd" id="pwd"></li>
	<li>验证码：<img alt="code..." name="randImage" id="randImage" src="ValidateImg.jsp" width="60" height="20" border="1" align="absmiddle">&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:loadimage();"><font class=pt95>看不清点我</font></a></li>
	<li><input type="text" id="iprand" name="rand" size="15"></li>
	</ul>	
	<input type="button" onclick="CheckUser()" name="login" value="提交" style="width:100px;height: 30px">
</div>
</body> 
</html>