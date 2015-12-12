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
			<div class="col-md-8">
				<c:forEach items="${data}" var="d" varStatus="var">
					<div class="well">
						<blockquote>
							<h3><c:out value='${d.CTitle}' /></h3>
							<h5><fmt:formatDate value="${d.dtCreatetime}" type="both"
								pattern="yyyy-MM-dd HH:mm" /></h5>
						</blockquote>
						<p>
							<c:out value='${d.CContent}' escapeXml="false"/>
						</p>

					</div>
				</c:forEach>
			</div>
			<div class="col-md-4">
				<div class="well"></div>
				<div class="well"></div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>
