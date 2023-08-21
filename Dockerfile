# syntax=docker/dockerfile:1
# stage 1
FROM docker.io/maven:3.9.3-amazoncorretto-11 AS builder

WORKDIR /app

COPY . .

# RUN export MAVEN_OPTS="--add-opens java.base/java.util=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED"

RUN mvn --batch-mode package --no-transfer-progress

RUN mvn --batch-mode spotless:check diktat:check@diktat -Ddiktat.githubActions=true --no-transfer-progress || true

# stage 2
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY --from=builder /app/target/kotlin-example-flow-maven-1.0-jar-with-dependencies.jar .

CMD ["java", "-jar", "kotlin-example-flow-maven-1.0-jar-with-dependencies.jar"]
