FROM daocloud.io/library/centos
MAINTAINER lun9090 <643812461@qq.com>
ADD src /opt/apache-tomcat-6.0.41
RUN cd /opt/ && mv apache-tomcat-6.0.41 tomcat
ADD jdk-6u45-linux-x64.bin /opt/
RUN cd /opt && chmod +x jdk-6u45-linux-x64.bin && ./jdk-6u45-linux-x64.bin && mv jdk1.6.0_45 jdk && rm jdk-6u45-linux-x64.bin
ADD web-server /opt/tomcat/webapps/web-server
ENV JAVA_HOME /opt/jdk
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JRE_HOME/lib
ENV PATH $PATH:$JAVA_HOME/bin
CMD /opt/tomcat/bin/catalina.sh run
