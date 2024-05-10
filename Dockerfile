# Stage 1: Build
FROM openjdk:19-alpine AS builder

# Copy the java source file to the container
COPY ./HelloArgv.java /usr/src/HelloArgv.java

# Compile the Java source file
RUN javac /usr/src/HelloArgv.java

# Stage 2: Runtime
FROM openjdk:11-jre-slim

# Copy compiled Java program from the previous stage
COPY --from=builder /usr/src/HelloArgv.class /usr/src/HelloArgv.class

# Run the Java program as the default command
CMD ["java", "-classpath", "/usr/src", "HelloArgv"]
