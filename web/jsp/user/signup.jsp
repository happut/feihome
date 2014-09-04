<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<%@ include file="/jsp/import.jsp"%>
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
  	    $.post("login.wangfei", {"username":user,"passwords":pass}, function (data,textStatus){
			if(data.result == true){
				$("#loginPro").fadeIn();
				time = window.setInterval(setProgress, 1000); 
			}else{
				$("#subBtn").removeAttr("disabled");
			}
		},"json");
		return false;
	}
	function setProgress() 
	{ 
		valuePro+=50;
		$("#mainPro").css("width",valuePro+"%");
		if(valuePro == 100){
			window.clearInterval(time);
			window.location.href = '<c:url value="/" />';
		}
	}
</script>
</head>
<body>
	<div class="container">
		<jsp:include page="/jsp/header.jsp">
			<jsp:param name="active" value="index" />
		</jsp:include>
		<div class="row">
			<div class="col-md-4 col-md-offset-4 well">
				<form class="form-signin" action="" onsubmit="return submitForm();">
					<h2 class="form-signin-heading">登陆</h2>
					<input type="text" class="form-control" id="login-name"
						placeholder="用户名" autofocus> <input type="password"
						class="form-control" id="login-pass" placeholder="密码">
					<button id="subBtn" class="btn btn-lg btn-primary btn-block"
						type="submit">登陆</button>
					<div id="loginPro">
						<p>正在跳转首页。。。</p>
						<div class="progress progress-striped active">
							<div id="mainPro" class="progress-bar progress-bar-success"
								role="progressbar" aria-valuenow="40" aria-valuemin="0"
								aria-valuemax="100" style="width: 0%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>
