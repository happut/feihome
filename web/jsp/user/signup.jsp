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
	$(document).ready(function() {
		$("#loginPro").hide();
	});
	var time;
	var valuePro = 0;
	function submitForm(){
		var user = $("#login-name").val();
		var pass = $("#login-pass").val();
		$("#subBtn").attr("disabled","disabled");
		console.info(user+"☆"+pass);
  	    $.post("login.action", {"username":user,"passwords":pass}, function (data,textStatus){
			if(data.result == true){
				$("#loginPro").show();
				time = window.setInterval(setProgress, 50); 
			}else{
				$("#subBtn").removeAttr("disabled");
			}
		},"json");
		return false;
	}
	function setProgress() 
	{ 
		valuePro+=1;
		$("#mainPro").css("width",valuePro+"%");
		if(valuePro == 100){
			window.clearInterval(time);
			var ref = '<%=request.getParameter("ref")%>';
			if(ref != 'null'){
				window.location.href = '../'+ref.replace(new RegExp(/(_)/g),'/')+'.action';
			}else{
				window.location.href = '..';
			}
		}
	} 
</script>
</head>
<body>
    <div class="container">
      <form class="form-signin" action="" onsubmit="return submitForm();">
	        <h2 class="form-signin-heading">登陆</h2>
	        <input type="text" class="form-control" id="login-name" placeholder="用户名" autofocus>
	        <input type="password" class="form-control" id="login-pass" placeholder="密码">
	        <label class="checkbox">
	          	<input type="checkbox" value="remember-me"> 记住密码
	        </label>
	        <button id="subBtn" class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
			<div id="loginPro">
				<p>正在跳转之前网页。。。</p>
				<div class="progress progress-striped active">
					<div id="mainPro" class="progress-bar progress-bar-success" role="progressbar"
						aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
						style="width: 0%">
						<span class="sr-only">40% Complete (success)</span>
					</div>
				</div>
			</div>
		</form>
    </div>
</body>
</html>
