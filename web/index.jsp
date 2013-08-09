<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问我的空间</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/flat-ui.css">

<script src="js/jquery-2.0.3.js"></script>
<script src="js/bootstrap.js"></script>

</head>
<body bgcolor="#1abc9c">

	<div class="row-fluid">
		<div class="span4"></div>
		<div class="span4">
			<div class="login-form">
				<div class="control-group">
					<input type="text" class="login-field" value=""
						placeholder="Enter your name" id="login-name">
					 <label class="login-field-icon fui-man-16" for="login-name"></label>
				</div>

				<div class="control-group">
					<input type="password" class="login-field" value=""
						placeholder="Password" id="login-pass">
					<label class="login-field-icon fui-lock-16" for="login-pass"></label>
				</div>

				<a class="btn btn-primary btn-large btn-block" href="#">Login</a> <a
					class="login-link" href="#">Lost your password?</a>
			</div>
		</div>
		<div class="span4"></div>
	</div>
</body>
</html>