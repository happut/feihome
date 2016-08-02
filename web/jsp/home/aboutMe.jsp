<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<style>
/* oschina */
.pro_name a {
	color: #4183c4;
}

.osc_git_title {
	background-color: #d8e5f1;
}

.osc_git_box {
	background-color: #fafafa;
}

.osc_git_box {
	border-color: #ddd;
}

.osc_git_info {
	color: #666;
}

.osc_git_main a {
	color: #4183c4;
}
</style>
</head>
<body>

	<jsp:include page="/jsp/header.jsp" />
	<div class="wrap">
		<jsp:include page="/jsp/pageHeader.jsp" />
		<div class="container">
			<div class="row marketing">
				<div class="col-md-12">
					<div class="well">
						<blockquote>
							<p>一个简简单单的人</p>
						</blockquote>
						<address>
							<strong>Wang Fei, (Happut).</strong><br> A Poor Java
							Programme Developer<br> Xixiaokou, Haidian, Beijing, China<br>
							<abbr title="Phone">P:</abbr> (0) 156-GRYS-8912<br> <abbr
								title="E-Mail">E:</abbr> <a href="mailto:happut@163.com">happut#163.com</a>
							(Please replace '#' with '@')
						</address>
					</div>
				</div>
				<div class="col-md-12">
					<div class="well">
						<blockquote>
							<p>开发进度</p>
						</blockquote>
						<script
							src='http://git.oschina.net/littlewangfei/feihome/widget_preview'></script>
					</div>
				</div>
				<%@ include file="/jsp/changelog.jsp"%>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>