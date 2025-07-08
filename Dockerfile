# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from target to /app/app.jar
COPY target/portfolio-0.0.1-SNAPSHOT.jar app.jar

# Tell Spring Boot to listen on the correct port
ENV PORT 8080

# Expose port for Render (will be overridden by $PORT)
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "app.jar"]
