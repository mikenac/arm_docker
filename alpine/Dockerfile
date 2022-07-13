FROM alpine:latest

ENV JAVA_HOME /usr/lib/jvm/default-jvm

RUN apk --no-cache update && apk upgrade \
&& apk --no-cache add curl \
&& curl -o /etc/apk/keys/amazoncorretto.rsa.pub  https://apk.corretto.aws/amazoncorretto.rsa.pub \
&& echo "https://apk.corretto.aws/" >> /etc/apk/repositories \
&& apk update \
&& apk add --no-cache amazon-corretto-18



