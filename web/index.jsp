<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<%@ include file="/jsp/import.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问我的空间</title>
</head>
<body>
	<div class="container">
		<jsp:include page="/jsp/header.jsp">
			<jsp:param name="active" value="index" />
		</jsp:include>
		<div class="row marketing">
			<div class="col-md-12">
				<div class="well">
					<h3>Feihome v0.6.1更新了</h3>
					<h6>
						<small>wangfei 2014-09-01 00:00</small> <span
							class="glyphicon glyphicon-comment"></span><span class="badge">10</span>
						| <span class="glyphicon glyphicon-thumbs-up"></span><span
							class="badge">5</span></small>
					</h6>
				</div>
			</div>

			<div class="col-md-12">
				<div class="well">
					<h1>常用网址</h1>
					<div class="row">
						<div class="col-md-2">
							<a href="http://www.iteye.com/" title="Iteye" target="_blank"><img
								width="16" height="16" src="http://3.su.bdimg.com/icon/8882.png">Iteye</a>
						</div>
						<div class="col-md-2">
							<a href="http://www.csdn.net/" title="CSDN" target="_blank"><img
								width="16" height="16" src="http://1.su.bdimg.com/icon/712.png">CSDN</a>
						</div>
						<div class="col-md-2">
							<a href="http://www.bootcss.com/" title="bootstrap"
								target="_blank"><img width="16" height="16"
								src="http://1.su.bdimg.com/icon/6000.png?3">bootstrap</a>
						</div>
						<div class="col-md-2">
							<a href="http://yun.baidu.com/" title="百度云" target="_blank"><img
								width="16" height="16" src="http://1.su.bdimg.com/icon/7656.png">百度云</a>
						</div>
						<div class="col-md-2">
							<a href="http://developer.baidu.com/" title="百度开发者中心"
								target="_blank"><img width="16" height="16"
								src="http://1.su.bdimg.com/icon/7656.png">百度开发者中心</a>
						</div>
						<div class="col-md-2">
							<a href="http://www.oschina.net/" title="开源中国" target="_blank"><img
								width="16" height="16" src="http://5.su.bdimg.com/icon/9524.png">开源中国</a>
						</div>
						<div class="col-md-2">
							<a href="http://git.oschina.net/" title="Git@OSC" target="_blank"><img
								width="16" height="16" src="http://5.su.bdimg.com/icon/9524.png">Git@OSC</a>
						</div>
						<div class="col-md-2">
							<a href="http://www.autohome.com.cn/" title="汽车之家"
								target="_blank"><img width="16" height="16" width="16"
								height="16" src="http://1.su.bdimg.com/icon/95512.png">汽车之家</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="well">
					<h3>友情链接</h3>
					<h5>
						<a href="http://xuding.info">徐老师</a>
					</h5>
				</div>
			</div>
		</div>
		<%@ include file="/jsp/footer.jsp"%>
	</div>
</body>
</html>