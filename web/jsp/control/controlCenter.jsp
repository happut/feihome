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
			<jsp:param name="active" value="controlCenter" />
		</jsp:include>
		<div class="row">
			<div class="col-md-3">
				<c:if test="${!empty sessionScope.user}">
					<div class="panel panel-success">
						<div class="panel-heading">任务</div>
						<div class="panel-body">
							<p class="text-center">
								<a href="<c:url value='/blog/addBlog.wangfei' />"><button
										type="button" class="btn btn-primary">
										<span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;&nbsp;&nbsp;添加新博客
									</button></a>
							</p>
							<p class="text-center">
								<a href="<c:url value='/blog/addBlog.wangfei' />"><button
										type="button" class="btn btn-primary">
										<span class="glyphicon glyphicon-edit"></span>&nbsp;&nbsp;&nbsp;&nbsp;添加通知
									</button></a>
							</p>
						</div>
					</div>
				</c:if>
			</div>
			<div class="col-md-9">
				<div class="panel panel-success">
					<div class="panel-heading">任务</div>
					<div class="panel-body">
						<p class="text-center"></p>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>