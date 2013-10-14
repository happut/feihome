<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<script src="../js/jquery-2.0.3.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap.js"></script>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../jsp/user/css/signup.css" rel="stylesheet">
<script type="text/javascript">
/*	$(document).ready(function() {
		
	});*/
	
	function submitForm(){
		alert("s")
		var user = $("#login-name").val();
		var pass = $("#login-pass").val();
		alert(user+pass)
		 $.post("login.action", {"username":user,"passwords":pass}, function (data,textStatus){
			if(data.result == true){
				alert("登陆成功");
			}else{
				alert("登录失败");
			}
		},"json");
		return false;
	}
</script>
</head>
<body>
    <div class="container">
      <form class="form-signin" action="" onsubmit="submitForm()">
        <h2 class="form-signin-heading">登陆</h2>
        <input type="text" class="form-control" id="login-name" placeholder="用户名" autofocus>
        <input type="password" class="form-control" id="login-pass" placeholder="密码">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> 记住密码
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
      </form>
    </div>
</body>
</html>
