FROM lolhens/baseimage-openjre
RUN mkdir /app
WORKDIR /app

ADD /var/lib/jenkins/workspace/springboot-microservice/cloud-config-server/target/cloud-config-server-0.0.1-SNAPSHOT.jar /app/app.jar
ADD /var/lib/jenkins/workspace/springboot-microservice/cloud-gateway/target/cloud-gateway-0.0.1-SNAPSHOT.jar /app/app.jar
ADD /var/lib/jenkins/workspace/springboot-microservice/department-service/target/department-service-0.0.1-SNAPSHOT.jar /app/app.jar
ADD /var/lib/jenkins/workspace/springboot-microservice/hystrix-dashboard/target/hystrix-dashboard-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 80
ENTRYPOINT ["java", "-jar", "app.jar"]
