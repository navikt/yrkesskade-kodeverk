FROM navikt/java:11-appdynamics

ENV APPLICATION_NAME=yrkesskade-kodeverk
ENV APPD_ENABLED=TRUE
ENV JAVA_OPTS="-Dhttps.protocols=TLSv1,TLSv1.1,TLSv1.2"

COPY ./target/yrkesskade-kodeverk-0.0.1-SNAPSHOT.jar "app.jar"