FROM ubuntu:16.04

MAINTAINER Wei-Ming Wu <wnameless@gmail.com>

ADD assets /assets
RUN /assets/setup.sh

RUN mv /u01/app/oracle/oradata /u01/app/oracle/oradata.orig
VOLUME /u01/app/oracle/oradata

EXPOSE 1521

CMD ["/usr/sbin/startup.sh"]
