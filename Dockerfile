# Указываем базовый образ с OpenJDK
FROM alpine:latest

RUN apk add git openjdk17
RUN git clone https://github.com/AngelIgor777/test.git

WORKDIR test
RUN ./gradlew bootJar -x test
RUN cp build/libs/*.jar ./app.jar

EXPOSE 8081

ENTRYPOINT ["java","-jar","app.jar"]

