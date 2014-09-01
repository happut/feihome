<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问我的空间</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/jsp/header.jsp" >
			<jsp:param name="active" value="readme" />
		</jsp:include>
		<div class="row marketing">
			<div class="col-md-12">
				<div class="well">
					<h1>一个简简单单的人</h1>
					<address>
						<strong>Wang Fei, (Happut).</strong><br> A Poor Java
						Programme Developer<br> Xixiaokou, Haidian, Beijing, China<br>
						<abbr title="Phone">P:</abbr> (0) 156-GRYS-8912<br>
						<abbr title="E-Mail">E:</abbr> <a href="mailto:happut@163.com">happut#163.com</a> (Please replace '#' with '@')
					</address>
				</div>
			</div>
		</div>
		
		<div class="row marketing">
			<div class="col-md-12">
				<script src="http://git.oschina.net/littlewangfei/feihome/preview"></script>
			</div>
		</div>
		
		<%@ include file="/jsp/foot.jsp"%>
	</div>
</body>
</html>