FROM bionic187/rpi-java:1.0.0-ubuntu-jdk8

ARG zookeeperversion=3.4.13
ARG config_tickTime=2000
ARG config_maxClientCnxns=10

ENV env_filename=zookeeper-${zookeeperversion}
ENV env_installpath=/opt/${env_filename}
ENV env_config_suffix=config_

ENV config_tickTime=${config_tickTime}
ENV config_maxClientCnxns=${config_maxClientCnxns}

RUN apt-get update
RUN apt-get install -y wget

COPY core/download.sh /tmp
RUN sh /tmp/download.sh 

RUN tar -xzf ${env_filename}.tar.gz -C /opt

COPY core/start.sh ${env_installpath}
COPY core/zoo.cfg ${env_installpath}/conf

RUN chmod +x ${env_installpath}/start.sh

#CMD ["bash", "start.sh"]
CMD ["/opt/zookeeper-3.4.13/bin/zkServer.sh", "start-foreground"]
