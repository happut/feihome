<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.feihome.support.utils.ConfigUtils"%>

<link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="//cdn.bootcss.com/bootstrap-material-design/0.5.4/css/bootstrap-material-design.min.css" rel="stylesheet">
<link href="//cdn.bootcss.com/bootstrap-material-design/0.5.4/css/ripples.min.css" rel="stylesheet">

<script src="//cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap-material-design/0.5.4/js/ripples.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap-material-design/0.5.4/js/material.min.js"></script>

<!-- <link href="//cdn.bootcss.com/bootstrap-markdown/2.9.0/css/bootstrap-markdown.min.css" rel="stylesheet">
<script src="//cdn.bootcss.com/bootstrap-markdown/2.9.0/js/bootstrap-markdown.js"></script>

<script src="//cdn.bootcss.com/markdown.js/0.6.0-beta1/markdown.min.js"></script> -->
<script type="text/javascript">
	$(document).ready(function(){
		$.material.init();
	});
</script>

<link href="<c:url value="/css/common.css"/>" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title><%=ConfigUtils.getProperty("feihome.title")%></title>