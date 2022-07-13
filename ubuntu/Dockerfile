FROM ubuntu:latest

ENV JAVA_HOME /usr/lib/jvm/java-18-amazon-corretto

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y wget gnupg ca-certificates software-properties-common \
&& wget -O- https://apt.corretto.aws/corretto.key | apt-key add - \
&& add-apt-repository 'deb https://apt.corretto.aws stable main' \
&& apt-get update && apt-get install -y java-18-amazon-corretto-jdk \
&& dpkg --remove wget software-properties-common \
&& apt-get clean

