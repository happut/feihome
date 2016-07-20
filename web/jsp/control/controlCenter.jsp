<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
</head>
<body>
	<jsp:include page="/jsp/header.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-md-offset-1">
				<shiro:authenticated>
					<div class="panel panel-info">
						<div class="panel-heading">任务</div>
						<div class="panel-body">
							<p class="text-center">
								<a href="<c:url value='/blog/addBlog' />"><button
										type="button" class="btn btn-info">
										<span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;&nbsp;&nbsp;添加新博客
									</button></a>
							</p>
							<p class="text-center">
								<a href="<c:url value='/blog/addBlog' />"><button
										type="button" class="btn btn-info">
										<span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;&nbsp;&nbsp;添加通知
									</button></a>
							</p>
						</div>
					</div>
				</shiro:authenticated>
			</div>
			<div class="col-md-7">
				<div class="panel panel-info">
					<div class="panel-heading">任务</div>
					<div class="panel-body">
						<p class="text-center"></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>