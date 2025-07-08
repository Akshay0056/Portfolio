# Stage 1: Build the app
FROM eclipse-temurin:17-jdk-jammy AS build

WORKDIR /app

# Copy source code
COPY . .

# Build the application using Maven Wrapper
RUN ./mvnw clean package -DskipTests

# Stage 2: Run the app
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Copy the built jar from the build stage
COPY --from=build /app/target/Portfolio-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
