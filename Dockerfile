FROM gradle:6.8.0-jdk11

WORKDIR app
COPY . .

RUN gradle build -Dquarkus.package.type=uber-jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "build/kotlin-1.0-SNAPSHOT-runner.jar"]