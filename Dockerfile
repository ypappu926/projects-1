FROM openjdk:11
COPY target/*.war /
EXPOSE 8080
ENTRYPOINT ["java","-jar","/webapp-1.0-SNAPSHOT.war"]
