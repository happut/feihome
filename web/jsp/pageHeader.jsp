<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.feihome.support.utils.ConfigUtils"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>

<script type="text/javascript">
	$(document).ready(function() {
		var mySwiper = new Swiper('.swiper-container', {
			autoplay : 3000,//可选选项，自动滑动 
			direction : 'horizontal',
			pagination : '.swiper-pagination',
			loop : true
		})
	});
</script>

<div class="jumbotron pageHead">
	<div class="container">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<h1>Feihome</h1>
					<h2><%=ConfigUtils.getProperty("feihome.title")%></h2>
					<p>
						<a href="<c:url value='/' />"><span><%=ConfigUtils.getProperty("feihome.url")%></span></a>
					</p>
				</div>
				<div class="swiper-slide">
					<h1>Feihome</h1>
					<h2><%=ConfigUtils.getProperty("feihome.title")%></h2>
					<p>
						<a href="<c:url value='/' />"><span><%=ConfigUtils.getProperty("feihome.url")%></span></a>
					</p>
				</div>
			</div> 
			<div class="swiper-pagination"></div>
		</div>
	</div>
</div>


