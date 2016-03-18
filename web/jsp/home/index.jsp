<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
</head>
<body>

	<jsp:include page="/jsp/header.jsp">
		<jsp:param name="active" value="index" />
	</jsp:include>
	<div class="wrap">
		<div class="container">
			<div class="jumbotron">
				<h1><%=ConfigUtils.getProperty("feihome.title")%></h1>
				<p>
					<a href="<c:url value='/' />"><span style="margin-left: 10px;"><%=ConfigUtils.getProperty("feihome.url")%></span></a>
				</p>
			</div>
			<div class="row marketing">
				<div class="col-md-12">
					<div class="well">
						<h4 class="card-title">友情链接</h4>
						<p class="card-text">
							<a href="http://www.xuding.info" target="_blank"><img width="16"
								height="16" width="16" height="16" alt=""
								src="http://www.xuding.info/favicon.ico">徐老师</a>
						</p>
					</div>
				</div>
			</div>
			<div class="row marketing">
				<div class="col-md-12">
					<div class="well">
						<textarea id="some-textarea" name="content" data-provide="markdown" rows="10"></textarea>
						<script>
							$("#some-textarea").markdown({autofocus:false,savable:false})
						</script>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>