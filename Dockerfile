# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

VOLUME /tmp

EXPOSE 7070

# The application's jar file
ARG JAR_FILE=build/libs/employee-register-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} employee-register.jar

# Run the jar file 
ENTRYPOINT ["java","-jar","/employee-register.jar"]