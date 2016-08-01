<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<title><c:out value='${data.CTitle}' /></title>
</head>
<body>
	<jsp:include page='/jsp/header.jsp'/>
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
				<div class="well">
					<!-- 多说评论框 start -->
					<div class="ds-thread" data-thread-key="p<c:out value='${data.NId}' />" data-title="<c:out value='${data.CTitle}' />" data-url="<%=ConfigUtils.getProperty("feihome.url")%><c:url value='/blog/p/${data.NId}' />"></div>
					<!-- 多说评论框 end -->
					<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
					<script type="text/javascript">
					var duoshuoQuery = {short_name:"feihome"};
						(function() {
							var ds = document.createElement('script');
							ds.type = 'text/javascript';ds.async = true;
							ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
							ds.charset = 'UTF-8';
							(document.getElementsByTagName('head')[0] 
							 || document.getElementsByTagName('body')[0]).appendChild(ds);
						})();
						</script>
					<!-- 多说公共JS代码 end -->
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/jsp/footer.jsp"%>
</body>
</html>
