FROM ubuntu:18.04
RUN apt update
RUN apt install -y default-jdk maven wget
WORKDIR /opt/tomcat
RUN mkdir -p /boxfuse
WORKDIR  /boxfuse
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz 
RUN tar zxf /boxfuse/apache-tomcat-9.0.69.tar.gz 
RUN cp /boxfuse/apache-tomcat-9.0.69/*  /opt/tomcat/
RUN apt install -y git 
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello 
WORKDIR /boxfuse/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /boxfuse/boxfuse-sample-java-war-hello/target
ADD hello-1.0.war /opt/tomcat/webapps
#RUN boxfuse run target/hello-1.0.war
EXPOSE 8080
#CMD ["nginx", "-g", "daemon off;"]
CMD ["/opt/tomcat/bin/catalina.sh", "run"]