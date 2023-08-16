# syntax=docker/dockerfile:1
# stage 1
FROM maven:3.9.3-amazoncorretto-11 AS builder

WORKDIR /app

COPY . .

RUN mvn --batch-mode package --no-transfer-progress

# stage 2
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY --from=builder /app/target/kotlin-example-flow-maven-1.0-jar-with-dependencies.jar .

CMD ["java", "-jar", "kotlin-example-flow-maven-1.0-jar-with-dependencies.jar"]
