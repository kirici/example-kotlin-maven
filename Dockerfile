# syntax=docker/dockerfile:1
# stage 1
FROM docker.io/maven:3.9.3-eclipse-temurin-17-alpine AS base
ENV MAVEN_OPTS="--add-opens java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED"
WORKDIR /app
COPY . .

# stage 2
FROM docker.io/maven:3.9.3-eclipse-temurin-17-alpine AS build
WORKDIR /app
COPY --from=base /app .
RUN mvn --no-transfer-progress --batch-mode diktat:check@diktat -Ddiktat.githubActions=true || true
RUN mvn --no-transfer-progress --batch-mode package

# stage 3
# FROM docker.io/eclipse-temurin:17-alpine
# WORKDIR /app
# COPY --from=build /app/target/output.jar .
# CMD ["java", "-jar", "output.jar"]