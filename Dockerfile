# Указываем базовый образ с OpenJDK
FROM openjdk:17-jdk-alpine

# Аргумент для указания JAR-файла, который будет копироваться
ARG JAR_FILE=build/libs/demoSpringDocker1-0.0.1-SNAPSHOT.jar

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /javademo

# Копируем JAR-файл в контейнер
COPY ${JAR_FILE} app.jar

EXPOSE  8080
# Указываем команду для запуска приложения
ENTRYPOINT ["java", "-jar", "app.jar"]