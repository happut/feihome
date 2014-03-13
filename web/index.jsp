<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问我的空间</title>
<%@ include file="./jsp/import.jsp"%>
<!-- 请置于所有广告位代码之前 -->
<script type="text/javascript" src="http://cbjs.baidu.com/js/m.js"></script>
<style type="text/css">
body {
	height: 100%;
	/* The html and body elements cannot have any padding or margin. */
	font-family: "Microsoft YaHei";
}
</style>
</head>
<body>
	<%@ include file="./jsp/header.jsp"%>
	<div class="jumbotron">
		<h1>Feihome首页(v0.4 [SAE])</h1>
		<p>Spring MVC + Bootstrap搭建的系统</p>
		<p>
			<a class="btn btn-primary btn-lg" role="button">Learn more</a>
		</p>
	</div>
	<!-- 广告位：测试 -->
	<script type="text/javascript">
		BAIDU_CLB_fillSlot("874903");
	</script>
	<div class="container">
		<div class="col-md-6">
			<div class="container">左布局</div>
		</div>
		<div class="col-md-6">
			<div class="container">
				<div class="panel panel-default">
					<div class="panel-heading">开发动态：</div>
					<div class="panel-body">
						<script src="http://git.oschina.net/littlewangfei/feihome/preview"></script>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="./jsp/foot.jsp"%>
</body>
</html>