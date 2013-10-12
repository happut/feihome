<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hello World</title>
<script src="../js/jquery-2.0.3.js"></script>
<script src="../js/bootstrap.js"></script>
<link href="../css/bootstrap.css" rel="stylesheet">
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12  navbar-static-top">
				<h3>狱政管理2.2系统</h3>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span12">
				<c:forEach items="${data}" var="d">
					<h1><c:out value='${d.CTitle}'/></h1>
					<h3><c:out value='${d.dtCreatetime}'/></h3>
					<p><c:out value='${d.CContent}'/></p>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>
