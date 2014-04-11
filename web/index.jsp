<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问我的空间</title>
<%@ include file="./jsp/import.jsp"%>
<style type="text/css">
body {
	height: 100%;
	/* The html and body elements cannot have any padding or margin. */
	font-family: "Microsoft YaHei";
	padding-top: 50px;
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<jsp:include page="./jsp/header.jsp">
		<jsp:param value="indexNav" name="active"/>
	</jsp:include> 
	<div class="jumbotron">
		<div class="container">
			<h1>Feihome首页(v0.4 [SAE])</h1>
			<p>Spring MVC + Bootstrap搭建的系统</p>
			<p>
				<a class="btn btn-primary btn-lg" role="button">Learn more</a>
			</p>
		</div>
	</div>
	<div class="container">
		<div class="col-md-6">
			<div class="container">
				<div class="panel panel-success">
					<div class="panel-heading">个人简介：</div>
					<div class="panel-body">
						<p>姓名：Happut Wong Fane</p>
						<p>职业：Poor Java Programme Developer</p>
						<p>地方：Beijing</p>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="container">
				<script src="http://git.oschina.net/littlewangfei/feihome/preview"></script>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/foot.jsp"%>
</body>
</html>