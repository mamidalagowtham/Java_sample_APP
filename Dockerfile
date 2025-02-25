FROM openjdk:17-jdk-slim
COPY target/*.war /app.war
CMD ["java", "-jar", "/app.war"]
EXPOSE 8080
