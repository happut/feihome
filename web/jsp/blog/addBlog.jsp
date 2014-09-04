<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<%@ include file="/jsp/import.jsp"%>
<script charset="utf-8" src="../ckeditor/ckeditor.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		ckeditor = CKEDITOR.replace('content');
	});

	function submitForm() {
		var title = $("#blog_title").val();
		var content = ckeditor.document.getBody().getHtml();
		$.post("addBlogReq.wangfei", {
			"title" : title,
			"content" : content
		}, function(data, textStatus) {
			if (data.result == true) {
				window.location.href = 'list.wangfei';
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
		<div class="row ">
			<div class="col-md-offset-2 col-md-8 well ">
				<form class="form-horizontal" role="form"
					onsubmit="return submitForm();">
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">主题</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="blog_title"
								placeholder="Text input" />
						</div>
					</div>
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">内容</label>
						<div class="col-sm-10">
							<textarea class="ckeditor" rows="3" id="editor_id" name="content">
						
						</textarea>
						</div>
					</div>
					<div class="form-group"></div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">保存</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>
