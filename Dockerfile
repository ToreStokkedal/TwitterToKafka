# Use the Official OpenJDK image for a lean production stage of our multi-stage build.
# https://hub.docker.com/_/openjdk
# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
FROM openjdk:8-jre-alpine

# Copy local code to the container image.
COPY /target/TwitterToKafka-0.1.jar /TwitterToKafka-0.1.jar
COPY /target/lib/* /lib/
COPY ./startservices.sh /startservices.sh

# stat the services in the image
CMD ./startservices.sh

# Copy to rhel1
# scp -r ./* tores@rhel1.local:./TwitterToKafka
# to build; docker build . -t t2k/tores .
#           podman build . -t t2k/tores
# to run: docker run --add-host rhel1.local:192.168.39.249 t2k/tores
#         podman run --add-host rhel1.local:192.168.39.249 t2k/tores