<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增博客</title>
<%@ include file="/jsp/import.jsp"%>

<script type="text/javascript">
	$(document).ready(function() {
		$("#editor_id").markdown({
			autofocus : false
		});
	});
	function submitForm() {
		var title = $("#blog_title").val();
		var content = $("#editor_id").data('markdown').getContent();
		var blogId = $("#blogId").val();
		$.post("<c:url value='/blog/editBlogReq'/>", {
			"blogId" :blogId,
			"title" : title,
			"content" : content
		}, function(data, textStatus) {
			data = $.parseJSON(data);
			if (data.result == true) {
				if(blogId){
					window.location.href = '<c:url value='/blog/p/'/>'+blogId;
				}else{
					window.location.href = '<c:url value='/blog/list'/>';
				} 
			} else {
				alert("失败");
			}
		}, "json");
		return false;
	}
</script>
<style type="text/css">
.vertical-center {
	margin-top: 100px;
	min-height: 350px;
}
</style>
</head>
<body>
	<jsp:include page="/jsp/header.jsp" />
	<div class="wrap">
		<div class="container">
			<div class="col-md-12 well vertical-center">
				<form class="form-horizontal " role="form"
					onsubmit="return submitForm();">
					<div class="form-group has-info ">
						<label for="inputEmail3" class="col-md-1 control-label">主题</label>
						<div class="col-md-11">
							<input type="text" class="form-control" id="blog_title"
								placeholder="" value="<c:out value='${data.CTitle}'/>"/>
						</div>
					</div>
					<div class="form-group has-info">
						<label for="inputEmail3" class="col-md-1 control-label">内容</label>
						<div class="col-md-11">
							<textarea data-provide="markdown" rows="15" id="editor_id"
								name="content"><c:out value='${data.CContent}'/>
						</textarea>
						</div>
					</div>
					<div class="form-group  has-info">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-info">保存</button>
						</div>
					</div>
					<input type="hidden" id="blogId" value="${data.NId}">
				</form>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>
