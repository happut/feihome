<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="com.feihome.support.utils.ConfigUtils" %>

<style type="text/css">
    .footer {
        text-align: left;
        margin-top: 0px;
        padding-top: 20px;
        padding-bottom: 20px;
        font-family: 'Microsoft Yahei';
        font-size: 10pt;
    }

    .copyright {
        margin-bottom: 5px;
    }

</style>

<footer class="footer">
    <div class="container">
        <div class="row marketing">
            <div class="col-md-6">
                <div class="copyright">
                    Copyright <span class="glyphicon glyphicon-copyright-mark"></span>
                    1990 - 2017 .
                </div>
                <div class="copyright">Designed by <a href="http://weibo.com/littlewangfei"
                                                      target="_blank">@WangFei-Invariant.(Happut)</a>.
                    All rights reserved.
<!--                     <script type="text/javascript">
                        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
                                : " http://");
                        document
                                .write(unescape("%3Cspan id='cnzz_stat_icon_1253223179'%3E%3C/span%3E%3Cscript src='"
                                + cnzz_protocol
                                + "s5.cnzz.com/z_stat.php%3Fid%3D1253223179%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
                    </script> -->
                </div>
            </div>
            <div class="col-md-6">
                <div class="copyright">
                    Base on <a href="http://getbootstrap.com/" target="_blank">Bootstrap
                    3.3.6</a>,
                    <a href="https://fezvrasta.github.io/bootstrap-material-design/"
                       target="_blank">Material Design for Bootstrap</a>,
                       <a href="http://projects.spring.io/spring-framework"
                                target="_blank">Spring MVC</a>,
                    <a href="https://www.openshift.com/"
                       target="_blank">OpenShift</a>
                </div>
                <div class="copyright">
                    Current version：<a href="http://git.oschina.net/littlewangfei/feihome"
                                       target="_blank"> Feihome v<%=ConfigUtils.getProperty("feihome.version")%>
                </a>
                </div>
            </div>
        </div>
    </div>
</footer>


