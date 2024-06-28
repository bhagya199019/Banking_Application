FROM maven:3.8.2-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/BankingApplication.jar demo.jar
# Copy the JSP files and other web resources
COPY src/main/webapp /app/src/main/webapp
# ENV PORT=8080
EXPOSE 9000
ENTRYPOINT ["java","-jar","demo.jar"]
