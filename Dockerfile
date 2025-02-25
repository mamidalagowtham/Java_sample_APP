# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built WAR file into the container
COPY target/works-with-heroku-1.0.war /app.war

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "/app.war"]

