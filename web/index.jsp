<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>欢迎访问我的空间</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css"
	rel="stylesheet" />
<link
	href="http://fonts.googleapis.com/css?family=Abel|Open+Sans:400,600"
	rel="stylesheet" />

<script src="js/jquery-2.0.3.js"></script>
<script src="js/bootstrap.js"></script>
<style type="text/css">
ul.osx-dock li a {
  display: block;
  height: 50px;
  padding: 0 1px;
  margin: 0;
  -webkit-transition: 0.15s linear;
  -webkit-transition-property: -webkit-transform margin;
  -webkit-box-reflect: below 2px; -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(0.45, transparent), to(rgba(255, 255, 255, 0.25)));
}
 
ul.osx-dock li a img {
  width: 48px;
}
 
ul.osx-dock li:hover {
  margin-left: 9px; margin-right: 9px;
  z-index: 200;
}
 
ul.osx-dock li:hover a {
  -webkit-transform-origin: center bottom;
  -webkit-transform: scale(1.5);
}
 
ul.osx-dock li.nearby {
  margin-left: 6px; margin-right: 6px;
  z-index: 100;
}
 
ul.osx-dock li.nearby a {
  -webkit-transform-origin: center bottom;
  -webkit-transform: scale(1.25);
}
 
ul.osx-dock li span {
 background: rgba(0,0,0,0.75);
 position: absolute;
 bottom: 80px;
 margin: 0 auto;
 display: none;
 width: auto;
 font-size: 11px;
 font-weight: bold;
 padding: 3px 6px;
 -webkit-border-radius: 6px;
 color: #fff;
}
 ul.osx-dock li:hover span {
 display: block;
}
</style>
</head>
<body bgcolor="#1abc9c">
<a href="./blog/list.action">日志</a>
<br/>
<ul class="osx-dock">
  <li class="active">
    <span>ZURB</span>
    <a href="http://www.zurb.com" title="ZURB"><img src="/playground/osx-dock/zurb-icon.png" /></a>
  </li>
  <li>
    <span>LinkedIn</span>
    <a href="http://www.linkedin.com" title="LinkedIn"><img src="/playground/osx-dock/linkedin-icon.png" /></a>
  </li>
</ul>
</body>
</html>