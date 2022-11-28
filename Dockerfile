FROM ubuntu:1804
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven 
RUN mkdir -p /opt/apache-tomcat-9.0.69
RUN mkdir -p /boxfuse
WORKDIR  /boxfuse
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz 
RUN tar zxf apache-tomcat-9.0.69.tar.gz -C /opt/apache-tomcat-9.0.69
RUN apt install -y git 
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello 
WORKDIR /boxfuse/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /boxfuse/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps
#RUN boxfuse run target/hello-1.0.war
EXPOSE 8080
#CMD ["nginx", "-g", "daemon off;"]
CMD ["/opt/apache-tomcat-9.0.69/catalina.sh", "run"]