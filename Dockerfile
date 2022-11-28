FROM ubuntu:18.04
RUN apt update
RUN apt install -y default-jdk
RUN apt install -y maven 
RUN apt install -y tomcat9 
RUN apt install -y git 
RUN mkdir -p /boxfuse
WORKDIR  /boxfuse
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello 
WORKDIR /boxfuse/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /boxfuse/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps
#RUN boxfuse run target/hello-1.0.war
EXPOSE 8080
#CMD ["nginx", "-g", "daemon off;"]
CMD ["java","-war","/var/lib/tomcat9/webapps/hello-1.0.war"]