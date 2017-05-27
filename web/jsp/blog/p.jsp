<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<title><c:out value='${data.CTitle}' /></title>
<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
<script type="text/javascript">
	$(document).ready(function() {
	});
</script>
<!-- 多说公共JS代码 end -->

<style type="text/css">
.title {
	padding: 0 20px;
}

.summary {
	margin: 0 15px;
	padding: 10px;
	background-color: #efefef;
}

.content {
	padding: 30px;
}
</style>
</head>
<body>
	<jsp:include page='/jsp/header.jsp' />
	<div class="wrap">
		<jsp:include page="/jsp/pageHeader.jsp" />
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="well">
						<div class="title">
							<h3>
								<c:out value='${data.CTitle}' />
								<small><c:out value='${data.CUsername}' />(<fmt:formatDate
										value="${data.dtCreatetime}" type="both"
										pattern="yyyy-MM-dd HH:mm" />) <a href="#comment" /> <span
									class="ds-thread-count"
									data-thread-key="p<c:out value='${data.NId}' />"
									data-count-type="comments"></span> </a> <shiro:authenticated>
										<a href="<c:url value='/blog/edit/${data.NId}' />">编辑</a>
										<a href="<c:url value='/blog/delete/${data.NId}' />">删除</a>
									</shiro:authenticated> </small>
							</h3>
						</div>
						<div class="summary">
							<c:out value='${data.CSummary}' />
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="well">
						<div class="content">
							 <c:out value='${data.CContent}' escapeXml="false"/> 
						</div>
						<input class="content_hidden" type="hidden"
							value="<c:out value='${data.CContent}'/>">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="well" id="comment">
						<div id="cloud-tie-wrapper" class="cloud-tie-wrapper"></div>
						<script src="https://img1.cache.netease.com/f2e/tie/yun/sdk/loader.js"></script>
						<script>
                            var cloudTieConfig = {
                                url: "http://wangfei.tk/blog/p/"+<c:out value='${data.NId}' />,
                                sourceId: "<c:out value='${data.NId}' />",
                                productKey: "32f29f798af24bd8a98ae90f45dd1e81",
                                target: "cloud-tie-wrapper"
                            };
                            var yunManualLoad = true;
                            Tie.loader("aHR0cHM6Ly9hcGkuZ2VudGllLjE2My5jb20vcGMvbGl2ZXNjcmlwdC5odG1s", true);
						</script>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>
