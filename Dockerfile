FROM openjdk:8-jdk

MAINTAINER Thomas Strohmeier

ENV GRADL_VERSION 3.3

ENV PATH = $PATH:/usr/local/gradle/bin

RUN apt-get update \
    && apt-get install -y unzip --no-install-recommends \
    && apt-get clean \
    && cd /usr/local \
    && curl -L "https://services.gradle.org/distributions/gradle-$GRADL_VERSION-bin.zip" -o "gradle-$GRADL_VERSION-bin.zip" \
    && unzip "gradle-$GRADL_VERSION-bin.zip" \
    && ln -s "/usr/local/gradle-$GRADL_VERSION" /usr/local/gradle \
    && rm "gradle-$GRADL_VERSION-bin.zip" \
