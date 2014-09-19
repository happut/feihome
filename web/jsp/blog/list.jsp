<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>日志界面</title>
<%@ include file="/jsp/import.jsp"%>
<style type="text/css">
.blogDiv {
	padding: 35px 35px 35px 35px;
}

.blogSubTitle {
	/*text-align:right;*/
	color: #999999;
	font-size: 12px;
	margin: 10px 0px 10px 0px;
}

.commentDiv {
	display: none;
}
</style>

<script type="text/javascript">

	function showCommentDiv(id){
		$("#"+id).fadeToggle();
	}
	
	function deleteBlog(id){
			$.post('<c:url value="/blog/deteleBlogReq.wangfei" />', {
				"id" : id
			}, function(data, textStatus) {
				if (data.result == true) {
					window.location.href = '<c:url value="/blog/list.wangfei" />';
				} else {
					alert("失败");
				}
			}, "json");
			return false;
	}

</script>
</head>
<body>
	<div class="container">
		<jsp:include page='/jsp/header.jsp'>
			<jsp:param value="blog" name="active" />
		</jsp:include>
		<div class="row marketing">
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
						</div>
					</div>
				</c:if>
				<div class="panel panel-success">
					<div class="panel-heading">日期</div>
					<div class="panel-body">
						<p>2014年8月</p>
						<p>2014年7月</p>
						<p>2014年6月</p>
					</div>
				</div>
				<div class="panel panel-success">
					<div class="panel-heading">标签</div>
					<div class="panel-body">
						<p>卧槽</p>
					</div>
				</div>
			</div>
			<div class="col-md-9">
				<c:forEach items="${data}" var="d" varStatus="var">
					<div class="well blogDiv">
						<div>
							<h2>
								<c:out value='${d.CTitle}' />
							</h2>
						</div>
						<div class="blogSubTitle">
							<fmt:formatDate value="${d.dtCreatetime}" type="both"
								pattern="yyyy-MM-dd HH:mm" />
							<c:out value='${d.user.CUsername}' />&nbsp;&nbsp;
							<span class="glyphicon glyphicon-tags"></span>&nbsp;
							<span class="label label-success">卧槽</span>
						</div>
						<div>
							<c:out value='${d.CContent}' escapeXml="false" />
						</div>
						<p class="text-right">
							<c:if test = "${sessionScope.user.NId eq d.NUserid}">
							<span style="cursor: pointer;"><span
								class="glyphicon glyphicon-edit"></span>&nbsp;编辑</span> | <span
								style="cursor: pointer;"
								onclick="javascript:deleteBlog(<c:out value='${d.NId}'/>)"><span
								class="glyphicon glyphicon-remove"></span>&nbsp;删除</span> |
							</c:if> 
							<span
								style="cursor: pointer;"
								onclick="javascript:showCommentDiv('comment<c:out value='${d.NId}'/>')"><span
								class="glyphicon glyphicon-comment"></span>&nbsp;<span class="badge">10</span></span>
							| <span style="cursor: pointer;"><span
								class="glyphicon glyphicon-thumbs-up"></span>&nbsp;<span
								class="badge">5</span></span>
						</p>
						<div class="well commentDiv" id="comment<c:out value='${d.NId}'/>">
							<input type="text" class="form-control" id="blog_title"
								placeholder="用户名" />

							<textarea rows="3" class="form-control" id="blog_title"
								placeholder="请输入评论" cols="20"></textarea>
						</div>
					</div>
				</c:forEach>
				<ul class="pager">
					<li class="previous disabled"><a href="javascript:false;">&larr;
							Older</a></li>
					<li class="next"><a href="#">Newer &rarr;</a></li>
				</ul>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>
