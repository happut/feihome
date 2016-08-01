<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<title><%=ConfigUtils.getProperty("feihome.title")%></title>
</head>
<body>

	<jsp:include page="/jsp/header.jsp"/>
	<div class="wrap">
		<div class="container">
			<%--<div class="row marketing">
				<div class="col-md-12">
					<div class="well well-sm">
						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img src="../img/wedding/415K160406D04-154.JPG" width="100%">
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<img src="../img/wedding/415K160406D04-074.JPG" width="100%">
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<img src="../img/wedding/415K160406D04-126.JPG" width="100%">
									<div class="carousel-caption"></div>
								</div>
							</div>

							<!-- Controls -->
							<a class="left carousel-control" href="#carousel-example-generic"
								role="button" data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" role="button" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"
								aria-hidden="true"></span> <span class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</div>
			</div>
			--%>

			<div class="row marketing">
				<div class="col-md-12">
					<div class="jumbotron">
						<h2><%=ConfigUtils.getProperty("feihome.title")%></h2>
						<p>
							<a href="<c:url value='/' />"><span
								style="margin-left: 10px;"><%=ConfigUtils.getProperty("feihome.url")%></span></a>
						</p>
					</div>
				</div>
			</div>

			<div class="row marketing">
				<div class="col-md-12">
					<div class="well">
						<h4 class="card-title">友情链接</h4>
						<p class="card-text">
							<a href="http://www.xuding.info" target="_blank"><img
								width="16" height="16" width="16" height="16" alt=""
								src="http://www.xuding.info/favicon.ico">徐老师</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>