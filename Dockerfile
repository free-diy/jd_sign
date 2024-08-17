FROM openjdk:8u212-jre-alpine3.9
LABEL maintainer="freediy"

EXPOSE 8080
WORKDIR /app
VOLUME /app/data/

ADD https://github.com/free-diy/jd_sign/releases/download/12.2.2/jd.apk /app/init/
ADD https://github.com/free-diy/jd_sign/releases/download/0.0.1/unidbg-jd-sign-0.0.1-SNAPSHOT.jar /app/

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY libjdbitmapkit.so /app/init/
COPY start.sh /app/

RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]
