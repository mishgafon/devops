FROM ubuntu:18.04
RUN apt update
RUN apt install -y maven wget git 
WORKDIR  /boxfuse
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello 
WORKDIR /boxfuse/boxfuse-sample-java-war-hello
RUN mvn package

