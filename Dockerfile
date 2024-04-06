FROM openjdk:11.0.3-jre


RUN echo java -version
# Set the working directory in the container
WORKDIR /app

COPY . .


# Build jars
CMD ["./gradlew", "build","snapshot -Prelease.version=2.0.1-SNAPSHOT"]