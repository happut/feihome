<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<script src="../js/jquery-2.0.3.js"></script>
<script src="../js/bootstrap.js"></script>
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../jsp/blog/css/common.css" rel="stylesheet">
<link href="../jsp/blog/css/addBlog.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function(){
		
	});
	
	function submitForm(){
		var title = $("#blog_title").val();
		var content = $("#blog_content").val();
		alert(title+"☆"+content);
  	    $.post("login.action", {"username":user,"passwords":pass}, function (data,textStatus){
			if(data.result == true){
				$("#loginPro").show();
				time = window.setInterval(setProgress, 50); 
			}else{
				$("#subBtn").removeAttr("disabled");
			}
		},"json");
		return false;
	}
	
</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
		<a class="navbar-brand" href="#">Blog</a>
		<c:if test="${!empty sessionScope.user.CUsername}">
			<p class="navbar-text pull-right" id="logined">Signed in as <c:out value='${user.CUsername}' />  <a href="../user/signup.action?ref=blog_list">Sign out</a></p>
		</c:if>
		<c:if test="${empty sessionScope.user.CUsername}">
			<p class="navbar-text pull-right" id="login"><a href="../user/signup.action?ref=blog_list">Sign in</a></p>
		</c:if>
	</nav>
	<div id="wrap">

		<!-- Begin page content -->
		<div class="container">
			<form class="form-horizontal" role="form" onsubmit="return submitForm();">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">主题</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="blog_title" placeholder="Text input" />
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2 control-label">内容</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="3" id="blog_content"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">保存</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div id="footer">
      <div class="container">
        <p class="text-muted">Example courtesy <a href="http://martinbean.co.uk">Martin Bean</a> and <a href="http://ryanfait.com/sticky-footer/">Ryan Fait</a>.</p>
      </div>
    </div>
</body>
</html>
