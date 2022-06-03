#Build setup - using maven
FROM maven:3.8.5-jdk-11 as maven_build
woRKDIR /app
COPY . /app
RUN mvn clean package

#deploy .war file on tomcat
FROM tomcat:7.0.57-jre8

# COPY to copy the artifacts to htdocs tomcat container
COPY --from=maven_build /app/target/*.war /usr/local/tomcat/webapps/
