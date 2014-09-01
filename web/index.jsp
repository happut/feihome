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
			<jsp:param name="active" value="index" />
		</jsp:include>
		<div class="row marketing">
			<div class="col-md-12">
				<div class="well">
					<h1>Feihome v0.6.1更新了</h1>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/foot.jsp"%>
	</div>
</body>
</html>