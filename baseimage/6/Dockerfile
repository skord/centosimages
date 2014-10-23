FROM centos:centos6
MAINTAINER Mike Danko <mike@l4m3.com>
ENV HOME /root
RUN mkdir -p /build
ADD . /build
RUN chmod +x /build/prepare.sh &&\
    chmod +x /build/system_services.sh &&\
    chmod +x /build/cleanup.sh &&\
    sleep 2 &&\
    /build/prepare.sh &&\
    /build/system_services.sh &&\
    /build/cleanup.sh
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
EXPOSE 22
