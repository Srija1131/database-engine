FROM maven:3.9-eclipse-temurin-21

WORKDIR /app

COPY pom.xml .
COPY src ./src
COPY Metadata ./Metadata
COPY student ./student
COPY checkstyle.xml .
COPY suppressions.xml .
COPY SupportNull.txt .

RUN mvn clean package

CMD ["mvn", "test"]
