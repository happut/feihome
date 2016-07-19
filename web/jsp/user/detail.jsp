<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
</head>
<body>

	<jsp:include page="/jsp/header.jsp"/>
	<div class="wrap">
		<div class="row marketing">
			<div class="container">
				<div class="col-md-10 col-md-offset-1">
					<div class="well">
						<p>ID:<c:out value="${user.NId}"></c:out></p>
						<p>USERNAME:<c:out value="${user.CUsername }"></c:out></p>
						<p>EMAIL:<c:out value="${user.CEmail }"></c:out></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>

</body>
</html>