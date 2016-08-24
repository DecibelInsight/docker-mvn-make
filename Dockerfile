FROM maven:3.3.3-jdk-8
MAINTAINER Mike Christof <mhristof@gmail.com>

RUN apt-get update && apt-get install -y make binutils mysql-client && apt-get clean
COPY create_mysql.sh /bin/
