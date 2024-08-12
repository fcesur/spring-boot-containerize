FROM maven:3.9.8-eclipse-temurin-21-alpine AS build
WORKDIR /app
COPY . .
RUN mvn package -DskipTests

FROM openjdk:21-jdk-slim
COPY --from=build /app/target/containerizing-demo-1.0.0.jar /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]