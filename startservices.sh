#! /bin/sh
# Simple file to set variables and start services

# .jar have main class and classpath
java -jar TwitterToKafka-0.1.jar

# LOCAL TEST COMMAND
# java -cp "./dp-jars/* -jar" ./target/TwitterToKafka-0.1.jar 