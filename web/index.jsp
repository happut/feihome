<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <%@ include file="/jsp/import.jsp" %>
</head>
<body>

<jsp:include page="/jsp/header.jsp">
    <jsp:param name="active" value="index"/>
</jsp:include>
<div class="wrap">
    <div class="container">
        <div class="jumbotron">
            <h1><%=ConfigUtils.getProperty("feihome.title")%></h1>
            <p><a href="<c:url value='/' />"><span
                    style="margin-left: 10px;"><%=ConfigUtils.getProperty("feihome.url")%></span></a></p>
        </div>
        <div class="row marketing">
            <div class="col-md-12">
                <div class="card">
	                <div class="card-block">
						<!--高速版-->
						<div id="SOHUCS"></div>
						<script type="text/javascript">
						    (function(){ 
						    	var appid = 'cys5H3oKt'; 
						    	var conf = 'prod_477db5d530601b90cdd56133ad25cdf2'; 
						    	if (window.screen.width < 960) { 
						    	window.document.write('<script id="changyan_mobile_js" charset="utf-8" type="text/javascript" src="http://changyan.sohu.com/upload/mobile/wap-js/changyan_mobile.js?client_id=' + appid + '&conf=' + conf + '"><\/script>'); 
						    	} else { 
						    	var loadJs=function(d,a){var c=document.getElementsByTagName("head")[0]||document.head||document.documentElement;var b=document.createElement("script");b.setAttribute("type","text/javascript");b.setAttribute("charset","UTF-8");b.setAttribute("src",d);if(typeof a==="function"){if(window.attachEvent){b.onreadystatechange=function(){var e=b.readyState;if(e==="loaded"||e==="complete"){b.onreadystatechange=null;a()}}}else{b.onload=a}}c.appendChild(b)};loadJs("http://changyan.sohu.com/upload/changyan.js",function(){window.changyan.api.config({appid:appid,conf:conf})}); 
						    	} 
						    	})(); 					    
						</script>  
	                </div>
                </div>
            </div>
        </div>
        <div class="row marketing">
            <div class="col-md-12">
                <div class="card">
	                <div class="card-block">
	                    <h4 class="card-title">友情链接</h4>
	                    <p class="card-text">
	                        <a href="http://xuding.info" target="_blank"><img width="16"
	                                                                          height="16" width="16" height="16" alt=""
	                                                                          src="http://www.xuding.info/favicon.ico">徐老师</a>
	                    </p>
	                </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="/jsp/footer.jsp" %>
</body>
</html>