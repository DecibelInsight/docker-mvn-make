FROM maven:3.8-jdk-11
MAINTAINER Automation Team <devops@decibelinsight.com>

RUN apt update && apt install -y git wget make iputils-ping binutils default-mysql-client && apt-get clean
COPY create_mysql.sh /bin/
WORKDIR /data
