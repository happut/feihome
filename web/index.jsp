<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问我的空间</title>
<style>
body {
	background: url("img/sinablogb.jpg") no-repeat;
	background-position:center top;
	background-color:#e2ddc7;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row marketing">
			<div class="col-md-12">
				<div style="margin:'0px';padding:80px 120px 80px 40px;">
					<h1>一个菜鸟的自由空间</h1>
					<h4>Feihome</h4>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">主页</a></li>
					<li><a href="#">博客</a></li>
					<li><a href="#">关于我</a></li>
				</ul>
			</div>
		</nav>
		<div class="row marketing">
			<div class="col-md-6">
				<div class="well">
					<h1>Feihome v0.6.1</h1>
					<address>
						<strong>Wang Fei, (Happut).</strong><br> A Poor Java
						Programme Developer<br> Xixiaokou, Haidian, Beijing, China<br>
						<abbr title="Phone">P:</abbr> (0) 156-0029-8912
					</address>
				</div>
			</div>
			<div class="col-md-6">
				<script src="http://git.oschina.net/littlewangfei/feihome/preview"></script>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				Copyright © 2014 Wfei.de.bug.(Happut). All rights reserved. Thanks a
				lot for<img alt=""
					src="<c:url value='/img/poweredby-120x33px.png'/>"
					style="width: 120px; height: 33px" />
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>