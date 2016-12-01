FROM centos:6.8
MAINTAINER Rafael de Elvira <rafa@minijuegos.com>

ENV DEBIAN_FRONTEND noninteractive
RUN yum install -y epel-release
RUN yum -y update && yum -y upgrade
RUN yum install -y curl nginx
RUN yum clean all
RUN mkdir -p /src/kibana
RUN cd /src/kibana
RUN curl -sO https://download.elastic.co/kibana/kibana/kibana-3.1.3.tar.gz
RUN tar --strip-components=1 -xzf kibana-3.1.3.tar.gz

ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./start.sh /src/start.sh

EXPOSE 8080

CMD ["sh", "-ex", "/src/start.sh"]
