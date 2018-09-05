FROM maven:3.5.4-jdk-10-slim
MAINTAINER Automation Team <devops@decibelinsight.com>

RUN apt-get update && apt-get install -y make binutils mysql-client && apt-get clean
COPY create_mysql.sh /bin/
WORKDIR /data
