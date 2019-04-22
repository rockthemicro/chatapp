FROM openjdk:latest
VOLUME /tmp
ARG JAR_FILE=target/TestApp-1.0-SNAPSHOT.jar
ADD ${JAR_FILE} entry.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/entry.jar"]