FROM lolhens/baseimage-openjre
RUN mkdir /app
WORKDIR /app

ADD springboot-microservice/cloud-config-server/target/*.jar /app/app.jar

EXPOSE 80
ENTRYPOINT ["java", "-jar", "springbootApp.jar"]
