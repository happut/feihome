<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>

</head>
<body>
	<div class="container">
		<jsp:include page="/jsp/header.jsp">
			<jsp:param name="active" value="index" />
		</jsp:include>
		<div class="row marketing">
			<div class="col-md-12">
				<div class="well">
					<h3>Feihome更新计划</h3>
					<table class="table table-condensed">
						<tr class="success">
							<td>2014.10.1</td>
							<td>更新0.6.3</td>
						</tr>
						<tr>
							<td>2014.10.15</td>
							<td>更新0.7</td>
						</tr>
						<tr>
							<td>2014.11.1</td>
							<td>更新0.8</td>
						</tr>
						<tr>
							<td><strong>2014.11.15</strong></td>
							<td><strong>更新0.9</strong></td>
						</tr>
						<tr>
							<td>2014.12.1</td>
							<td>更新0.9.1</td>
						</tr>
						<tr>
							<td>2014.12.15</td>
							<td>更新0.9.2</td>
						</tr>
						<tr>
							<td><strong>2015.1.1</strong></td>
							<td><strong>更新1.0</strong></td>
						</tr>
					</table>
					<h6>
						<small>wangfei 2014-09-22 00:00</small> <span
							class="glyphicon glyphicon-comment"></span><span class="badge">10</span>
						| <span class="glyphicon glyphicon-thumbs-up"></span><span
							class="badge">5</span>
					</h6>
				</div>
			</div>

			<div class="col-md-12">
				<div class="well">
					<h3>留言板</h3>
					<table class="table">
						<tr>
							<td>我擦:网站弄得不错呦</td>
						</tr>
						<tr>
							<td>我擦:网站弄得不错呦</td>
						</tr>
						<tr>
							<td>我擦:网站弄得不错呦</td>
						</tr>
						<tr>
							<td>我擦:网站弄得不错呦</td>
						</tr>
					</table>
				</div>
			</div>

			<div class="col-md-12">
				<div class="well">
					<h3>友情链接</h3>
					<h5>
						<a href="http://xuding.info" target="_blank"><img width="16"
							height="16" width="16" height="16" alt=""
							src="http://www.xuding.info/favicon.ico">徐老师</a>
					</h5>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>