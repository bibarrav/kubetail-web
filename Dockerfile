FROM tsl0922/ttyd:1.4.4-alpine
LABEL maintainer "Shuanglei Tao - tsl0922@gmail.com" \
    maintainer "Damien Duportal - damien.duportal@gmail.com"

RUN wget https://github.com/jbvmio/kubetail/releases/download/v1.0.0/linux.amd64.kubetail.tar.gz -O kubetail.tar.gz
RUN tar -xvzf kubetail.tar.gz kubetail
RUN cp kubetail /usr/local/bin/

EXPOSE 7681

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["ttyd", "echo Hello!"]
