# Stage 1: Build the app
FROM eclipse-temurin:21-jdk-jammy AS build

WORKDIR /app

COPY . .

# Fix permission for mvnw
RUN chmod +x mvnw

# Build the application
RUN ./mvnw clean package -DskipTests

# Stage 2: Run the app
FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY --from=build /app/target/Portfolio-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
