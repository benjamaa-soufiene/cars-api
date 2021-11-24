FROM openjdk:12-alpine
VOLUME /tmp
ADD /build/libs/*.jar    cars-api.jar
EXPOSE 5000
ENTRYPOINT exec java -jar cars-api.jar
