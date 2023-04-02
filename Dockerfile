#FROM openjdk:8
#ADD target/spring-boot-maven-plugin.jar spring-boot-maven-plugin.jar
#EXPOSE 8081
#ENTRYPOINT ["-java","-jar","spring-boot-maven-plugin.jar"]
FROM ubuntu:latest

# Install required packages
RUN apt-get update && \
    

# Set environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.18.0.10-1.el7_9.x86_64
ENV PATH=$PATH:$JAVA_HOME/bin

# Set working directory
WORKDIR /app

# Copy your application files to the container
COPY . /app

# Start your application

