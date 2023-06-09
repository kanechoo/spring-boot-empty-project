# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the jar file into the container at /app
COPY build/libs/spring-boot-empty-project-1.0.jar /app/spring-boot-empty-project-1.0.jar

# Expose port 8877
EXPOSE 8877

# Run the command to start the Kotlin Spring Boot application
CMD ["java", "-Xmx400m", "-jar", "spring-boot-empty-project-1.0.jar"]

