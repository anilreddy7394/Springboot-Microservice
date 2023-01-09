FROM openjdk:11-jre-slim
RUN mkdir/app
WORKDIR /app

ADD target/*.jar /app/app.jar

EXPOSE 80
ENTRYPOINT ["java", "-jar", "springbootApp.jar"]
