FROM lolhens/baseimage-openjre

ADD target/cloud-config-server-0.0.1-SNAPSHOT.jar app.jar
ADD target/cloud-gateway-0.0.1-SNAPSHOT.jar app.jar
ADD target/department-service-0.0.1-SNAPSHOT.jar app.jar
ADD target/hystrix-dashboard-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 80
ENTRYPOINT ["java", "-jar", "app.jar"]
