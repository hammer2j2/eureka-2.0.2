FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

COPY . .

RUN ./gradlew --info --stacktrace build

# Build jars
CMD ["./gradlew", "publishToMavenLocal"]
