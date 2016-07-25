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
			<div class="col-md-12">
				<div class="well">
					<blockquote>
						<p>
							<c:out value='${data.CTitle}' />
						</p>
						<footer>
							无 <cite title="Source Title"><a href="http://wangfei.tk">http://wangfei.tk</a></cite>
							<p class="text-right">
								<fmt:formatDate value="${data.dtCreatetime}" type="both"
									pattern="yyyy-MM-dd HH:mm" />
								<c:out value='${data.CUsername}' />
							</p>
						</footer>
					</blockquote>
				</div>
				<div class="well">
					<c:out value='${data.CContent}' escapeXml="false" />
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>
