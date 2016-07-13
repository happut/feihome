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
			<div class="col-md-10 col-md-offset-1">
				<div class="well">
					<blockquote>
						<h3>
							<c:out value='${data.CTitle}' />
						</h3>
						<h5>
							<fmt:formatDate value="${data.dtCreatetime}" type="both"
								pattern="yyyy-MM-dd HH:mm" />
						</h5>
						<h6>
							<c:out value='${data.CUsername}' />
						</h6>
					</blockquote>
					<p>
						<c:out value='${data.CContent}' escapeXml="false" />
					</p>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>