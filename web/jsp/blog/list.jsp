<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
</head>
<body>
	<jsp:include page='/jsp/header.jsp'>
		<jsp:param value="blog" name="active" />
	</jsp:include>
	<div class="wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="well">
						<c:forEach items="${data}" var="d" varStatus="var">
							<h4><c:out value='${d.CTitle}' /></h4>
						</c:forEach>
					</div>
				</div>
				<div class="col-md-4">
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>
