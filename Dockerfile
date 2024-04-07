FROM openjdk:11

# Set the working directory in the container
WORKDIR /app

COPY . .

# Build jars
CMD ["./gradlew", "build"]
