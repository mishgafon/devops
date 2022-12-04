FROM ubuntu:18.04
RUN apt update
RUN apt install -y default-jdk wget
WORKDIR /opt/tomcat
WORKDIR  /tmp
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz -O tomcat.tar.gz
RUN tar zxf /tmp/tomcat.tar.gz 
RUN cp -Rv /tmp/apache-tomcat-9.0.69/*  /opt/tomcat/
#WORKDIR /boxfuse/boxfuse-sample-java-war-hello/target
#RUN cp hello-1.0.war /opt/tomcat/webapps
#RUN boxfuse run target/hello-1.0.war
EXPOSE 8080
#CMD ["nginx", "-g", "daemon off;"]
CMD ["/opt/tomcat/bin/catalina.sh", "run"]