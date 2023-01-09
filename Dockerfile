FROM lolhens/baseimage-openjre
RUN mkdir /app
WORKDIR /app

ADD springboot-microservice/cloud-config-server/target/*.jar /app/app.jar
ADD springboot-microservice/cloud-gateway/target/*.jar /app/app.jar
ADD springboot-microservice/department-service/target/*.jar /app/app.jar
ADD springboot-microservice/hystrix-dashboard/target/*.jar /app/app.jar

EXPOSE 80
ENTRYPOINT ["java", "-jar", "app.jar"]
