# Use lightweight Java 17 runtime
FROM eclipse-temurin:17-jre-alpine

# Set working directory
WORKDIR /app

# Copy jar into container
COPY target/github-cicd-actions-0.0.1-SNAPSHOT.jar github-cicd-actions-0.0.1-SNAPSHOT.jar

# Expose Spring Boot port
EXPOSE 9090

# Run the application
ENTRYPOINT ["java", "-jar", "github-cicd-actions-0.0.1-SNAPSHOT.jar"]
