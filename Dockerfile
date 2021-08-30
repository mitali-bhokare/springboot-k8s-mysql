FROM adoptopenjdk/openjdk11:alpine-jre
WORKDIR /opt/intuit

RUN apk --no-cache add curl
RUN apk add bash
#RUN usermod -u 1000 mysql

ADD target/springboot-k8s-mysql-0.0.1-SNAPSHOT.jar /opt/intuit/app.jar
ENTRYPOINT ["java","-jar","/opt/intuit/app.jar"]