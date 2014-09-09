<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.feihome.support.utils.ConfigUtils"%>

<style type="text/css">
.footer {
	text-align: center;
	margin-top: 10px;
	margin-bottom: 30px;
}

.copyright {
	margin-bottom: 5px;
}

.saelogo {
	margin-top: 5px;
}
</style>

<footer class="footer">
	<div class="container">
		<div class="row marketing">
			<div class="col-md-12">
				<div class="copyright">
					Copyright <span class="glyphicon glyphicon-copyright-mark"></span>
					1990 - 2014 Wfei.de.bug.(Happut). All rights reserved.
					<script type="text/javascript">
						var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
								: " http://");
						document
								.write(unescape("%3Cspan id='cnzz_stat_icon_1253223179'%3E%3C/span%3E%3Cscript src='"
										+ cnzz_protocol
										+ "s5.cnzz.com/z_stat.php%3Fid%3D1253223179%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
					</script>					
				</div>
				<div class="copyright">
					<a href="http://git.oschina.net/littlewangfei/feihome"
						target="_blank"> Feihome v<%=ConfigUtils.getProperty("feihome.version")%>
					</a> . Base on <a href="http://v3.bootcss.com/" target="_blank">Bootstrap
						3.2</a>, <a href="http://projects.spring.io/spring-framework"
						target="_blank">Spring MVC</a>
				</div>
				<div class="saelogo">
					<a href="http://sae.sina.com.cn" target="_blank"><img alt=""
						src="<c:url value='/img/poweredby.png'/>"
						style="width: 120px; height: 33px" /></a>
				</div>
			</div>
		</div>
	</div>
</footer>


