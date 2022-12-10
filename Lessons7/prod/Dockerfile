FROM tomcat:alpine
#RUN apk add --update openjdk11
#RUN apk add --no-cache wget
#RUN apk add ca-certificates
#RUN apk update ca-certificates
#RUN rm -rf /var/cache/apk/*
#WORKDIR /opt/tomcat
#WORKDIR  /tmp
#RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.70/bin/apache-tomcat-9.0.70.tar.gz
#RUN tar zxf /tmp/apache-tomcat-9.0.70.tar.gz
#RUN cp -Rv /tmp/apache-tomcat-9.0.70/*  /opt/tomcat/
#WORKDIR /boxfuse/boxfuse-sample-java-war-hello/target
#RUN cp hello-1.0.war /opt/tomcat/webapps
#RUN boxfuse run target/hello-1.0.war
EXPOSE 8080
#CMD ["nginx", "-g", "daemon off;"]
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]