FROM openjdk:8
ENV context ""
ENV port 8082
ADD /src/main/resources/application.properties //

ADD /target/spring-boot-rest-example-0.0.1-SNAPSHOT.jar //
ENTRYPOINT ["java", "-jar", "/spring-boot-rest-example-0.0.1-SNAPSHOT.jar", "--server.servlet.context-path=${context}","--server.port=${port}"]
