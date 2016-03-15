<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<%@ include file="/jsp/import.jsp"%>
<style type="text/css">

.vertical-center{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$(".form-signin").fadeIn("slow");
	});
	function submitForm() {
		var user = $("#login-name").val();
		var pass = $("#login-pass").val();
		$("#subBtn").attr("disabled", "disabled");
		console.info(user + "☆" + pass);
		$.post("login.wangfei", {
			"username" : user,
			"passwords" : pass
		}, function(data, textStatus) {
			if (data.result == true) {
				$(".form-signin").hide();
				$(".form-signin").html("登陆成功，正在跳转，请稍后...");
				$(".form-signin").fadeIn("slow");
				setTimeout(function() {
					window.location.href = document.referrer;
				}, 1000);
			} else {
				$("#subBtn").removeAttr("disabled");
			}
		}, "json");
		return false;
	}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3 well vertical-center">
				<form class="form-signin" style="display: none;" action=""
					onsubmit="return submitForm();">
					<h2 class="form-signin-heading">登陆</h2>
					<input type="text" class="form-control" id="login-name"
						placeholder="用户名" autofocus> <input type="password"
						class="form-control" id="login-pass" placeholder="密码">
					<button id="subBtn" class="btn btn-lg btn-primary btn-block"
						type="submit">登陆</button>
					<button id="subBtn" class="btn btn-lg btn-primary btn-block"
						type="submit">返回首页</button>
				</form>
			</div>
		</div>
	</div> 
</body>
</html>
