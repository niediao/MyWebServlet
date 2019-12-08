FROM tomcat

COPY ./output/HelloWorld.jar /usr/local/tomcat/myWebapps/myWeb/WEB-INF/lib/
COPY ./webConfig/web.xml /usr/local/tomcat/myWebapps/myWeb/WEB-INF/
COPY ./res/index.html /usr/local/tomcat/myWebapps/myWeb/
COPY ./webConfig/server.xml /usr/local/tomcat/conf

ARG MY_HOST_IP
ENV MY_HOST_IP $MY_HOST_IP

