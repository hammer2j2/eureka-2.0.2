FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

COPY . .
# must stay 0.0.1-SNAPSHOT
RUN ./gradlew -xtest --info --stacktrace build

# builds snapshot 0.0.1-SNAPSHOT
# CMD ["./gradlew", "publishToMavenLocal"]

# builds snapshot 2.0.2 prod for spring cloud netflix
CMD ["./gradlew", "publishNebulaPublicationToMavenLocal"]
