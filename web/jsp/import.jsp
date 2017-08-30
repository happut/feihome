<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<link href="//cdn.bootcss.com/bootstrap-material-design/0.5.10/css/bootstrap-material-design.min.css" rel="stylesheet">
<link href="//cdn.bootcss.com/bootstrap-material-design/0.5.10/css/ripples.min.css" rel="stylesheet">
<link href="//cdn.bootcss.com/bootstrap-markdown/2.10.0/css/bootstrap-markdown.min.css" rel="stylesheet">

<link href="//cdn.bootcss.com/Swiper/3.3.1/css/swiper.min.css" rel="stylesheet">

<style>
    .well{
        border-radius: 10px !important;
    }

    nav {
        padding-top: 30px;
    }

    .nav-menu,.pager li  {
        border-radius: 10px !important;
        box-shadow: 0 8px 17px 0 rgba(0, 0, 0, .2), 0 6px 20px 0 rgba(0, 0, 0, .19);
        background-color: rgba(0, 0, 0, 0);
        margin-top: 30px;
        margin-bottom: 30px;
    }

</style>

<script src="//cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap-material-design/0.5.10/js/ripples.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap-material-design/0.5.10/js/material.min.js"></script>

<script src="//cdn.bootcss.com/markdown.js/0.5.0/markdown.min.js"></script>
<script src="//cdn.bootcss.com/marked/0.3.6/marked.js"></script>
<script src="//cdn.bootcss.com/to-markdown/3.0.1/to-markdown.js"></script>
<script src="//cdn.bootcss.com/bootstrap-markdown/2.10.0/js/bootstrap-markdown.js"></script>

<script src="//cdn.bootcss.com/Swiper/3.3.1/js/swiper.jquery.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $.material.init();
    });


</script>

<%-- <link href="<c:url value="/css/thinker-md.user.css"/>" rel="stylesheet">
<link href="<c:url value="/css/thinker-md.vendor.css"/>" rel="stylesheet"> --%>
<link href="<c:url value="/css/common.css"/>" rel="stylesheet">


<%-- <script type="text/javascript" charset="utf-8" src="<c:url value="/js/thinker-md.vendor.js"/>"></script> --%>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

