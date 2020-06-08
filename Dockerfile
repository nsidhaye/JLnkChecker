FROM openjdk:14-alpine
COPY target/jlnkchecker-*.jar jlnkchecker.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "jlnkchecker.jar"]
