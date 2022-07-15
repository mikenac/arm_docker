FROM amazonlinux:2

ENV JAVA_HOME /usr/lib/jvm/java

RUN rpm --import https://yum.corretto.aws/corretto.key \
&& curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo \
&& yum update -y && yum upgrade -y \
&& yum install -y java-18-amazon-corretto-devel \
&& yum clean all && rm -rf /var/cache/yum



