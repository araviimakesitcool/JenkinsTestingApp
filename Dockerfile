# Use OpenJDK 17 as the base image
FROM openjdk:17-jdk

# Set environment variables for the database
#ENV DB_HOST=space-mobapp-db.ceetpbm6oiuo.us-east-1.rds.amazonaws.com
#ENV DB_USERNAME=admin
#ENV DB_PASSWORD="(1\$R8)Q-cSyEad-c(0t}<MeY#G[Y"
#ENV RDS_PORT=3306
#ENV DB_NAME=space_mobile_api_dev

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application JAR to the container
COPY target/JenkinsTester-0.0.1-SNAPSHOT.jar JenkinsTester-0.0.1-SNAPSHOT.jar

# Expose the application port
EXPOSE 8085

# Run the Spring Boot application with the specified profile
ENTRYPOINT ["java", "-jar", "JenkinsTester-0.0.1-SNAPSHOT.jar"]
