FROM maven:3.3.3-jdk-8
MAINTAINER Mike Christof <mhristof@gmail.com>

RUN apt-get update && apt-get install -y make && apt-get clean
