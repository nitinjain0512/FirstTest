FROM java:test_auto_docker_image
WORKDIR /app
COPY home/runner/work/FirstTest/FirstTest/target/FirstTest-1.0-SNAPSHOT.jar FirstTest-1.0-SNAPSHOT.jar
RUN java -jar FirstTest-1.0-SNAPSHOT.jar
