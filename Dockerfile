# Use a valid Java 11 image
# FROM openjdk:11-jre-slim
FROM eclipse-temurin:11-jre-alpine

# Set the working directory
WORKDIR /app

# Copy the jar file from the build/libs folder
# Note: Ensure the filename 'jhooq-docker-demo.jar' matches your actual jar name
COPY build/libs/*.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
