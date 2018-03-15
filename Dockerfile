FROM alpine:edge

RUN \
apk add --no-cache mongodb && \
rm /usr/bin/mongoperf

VOLUME /opt/db
EXPOSE 27017 28017

COPY run.sh /root
ENTRYPOINT [ "/root/run.sh" ]
CMD [ "mongod", "--bind_ip", "0.0.0.0" ]
