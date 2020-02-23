# Use the Official OpenJDK image for a lean production stage of our multi-stage build.
# https://hub.docker.com/_/openjdk
# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
FROM openjdk:8-jre-alpine
FROM openjdk:8-jre-alpine

# Copy local code to the container image.
COPY /target/Hello-0.1.jar /hello-0.1.jar
COPY ./startservices.sh /startservices.sh

# stat the services in the image
CMD ./startservices.sh

# to build; docer build .
# to run: docker run -- name helloworld <imge id>