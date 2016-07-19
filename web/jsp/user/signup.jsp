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
.vertical-center {
	margin-top:100px;
}

.errorMsg {
	color: red;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$(".form-signin").fadeIn("slow");
		$("#backBtn").click(function() {
			window.location.href = '<c:url value='/' />';
		});
	});
	function submitForm() {
		var user = $("#login-name").val();
		var pass = $("#login-pass").val();
		$("#subBtn").attr("disabled", "disabled");
		$.post("login", {
			"username" : user,
			"passwords" : pass
		}, function(data, textStatus) {
			data = $.parseJSON(data);
			if (data.success == true) {
				$(".form-signin").hide();
				$(".form-signin").html("登陆成功，正在跳转，请稍后...");
				$(".form-signin").fadeIn("slow");
				setTimeout(function() {
					window.location.href = '<c:url value='/' />';
				}, 1000);
			} else {
				$("#subBtn").removeAttr("disabled");
				$(".form-signin .errorMsg").remove();
				$(".form-signin").append(
						"<div class='errorMsg'>" + data.message + "</div>")
			}
		}, "json");
		return false;
	}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4 well vertical-center">
				<form class="form-signin" style="display: block;" action=""
					onsubmit="return submitForm();">
					<h2 class="form-signin-heading">登陆</h2>
					<input type="text" class="form-control" id="login-name"
						placeholder="用户名" autofocus> <input type="password"
						class="form-control" id="login-pass" placeholder="密码">
					<button id="subBtn" class="btn btn-lg btn-primary btn-block"
						type="submit">登陆</button>
					<button id="backBtn" class="btn btn-lg btn-primary btn-block"
						type="button">返回首页</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
