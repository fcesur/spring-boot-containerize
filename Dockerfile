FROM openjdk:21-jdk
WORKDIR app
LABEL maintainer="github.com/fcesur"
ARG JAR_FILE=target/containerizing-demo-1.0.0.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT [ "java", "-jar","app.jar" ]