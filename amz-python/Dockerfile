FROM amazonlinux:2

RUN yum update && yum upgrade -y \
&& yum install -y amazon-linux-extras \
&& amazon-linux-extras enable python3.8 \
&& yum install -y python3.8 \
&& yum clean all
