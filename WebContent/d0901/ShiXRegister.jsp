<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_easyui/jquery-1.8.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery_easyui/locale/easyui-lang-zh_CN.js"></script>
<style type="text/css">
#id{
width: 100%;
height: auto;
position: relative;
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
text-align: center;
}
ul input{
height:30px;
width:400px;
font-size: 18px;
}
#dicChexk{
text-align: center;
}
#btOk{
width:120px;
height:40px;
background-color: green;
}
#divBt{
margin-top:20px;
text-align: center;
}
</style>
<!-- js部分 -->
<script type="text/javascript">
function CheckValue(){		
	var userName=$("#username").val();
	var userPwd=$("#pwd").val();
	if(userName=="" && userPwd==""){
		alert("用户名或密码未填写！");
		return;
	}
	if(!$("#way1").is(":checked")&& !$("#way2").is(":checked") && !$("#way3").is(":checked") && !$("#way4").is(":checked") ){	
		alert("请选择信息来源！");
		return;
	}
	var wa="";
	if($("#way1").is(":checked")){
		wa=$("#way1").val()+",";
	}
	if($("#way2").is(":checked")){
		wa +=$("#way2").val()+",";
	}if($("#way3").is(":checked")){
		wa += $("#way3").val()+",";
	}if($("#way4").is(":checked")){
		wa += $("#way4").val();
	}
	//alert(wa);
	 location.href = "ShiXRegisterInfo.jsp?username="+userName+"&userpwd="+userPwd+"&ways="+wa;//location.href实现客户端页面的跳转  
}
</script>
</head>
<body>
<div id="box">
	<div id="dvTop">
	<a>请输入注册信息</a>
	</div>
	
	<ul>
	<li>姓名 : <input type="text" name="username" id="username"></li>
	<li>密码 : <input type="password" name="pwd" id="pwd"></li>
	</ul>
	<div id="dicChexk">
	<span>
	<a>信息来源</a>
	<label><input name="way" id="way1" type="checkbox" value="报刊" />报刊 </label> 
	<label><input name="way" id="way2" type="checkbox" value="网络" />网络 </label> 
	<label><input name="way" id="way3" type="checkbox" value="朋友推荐" />朋友推荐 </label> 
	<label><input name="way" id="way4" type="checkbox" value="电视" />电视</label> 
	</span>
	</div>
	<div id="divBt"><button id="btOk" onclick="CheckValue()">提交</button></div>
</div>
</body>
</html>