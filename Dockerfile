FROM bionic187/rpi-java:1.0.0-ubuntu-jdk8

ARG zookeeperversion=3.4.13
ARG config_tickTime=2000
ARG config_maxClientCnxns=10

ENV env_filename=zookeeper-${zookeeperversion}
ENV env_installpath=/opt/${env_filename}
ENV env_config_suffix=config_
#ENV env_config_file_relative_path=config/zookeeper.properties

#ENV config_clientPortAddress=127.0.0.1
ENV config_tickTime=${config_tickTime}
ENV config_maxClientCnxns=${config_maxClientCnxns}

RUN apt-get update
RUN apt-get install -y wget

COPY download.sh /tmp
RUN sh /tmp/download.sh 

RUN tar -xzf ${env_filename}.tar.gz -C /opt

#WORKDIR ${env_installpath}

#COPY var-sub.sh ${env_installpath}
COPY start.sh ${env_installpath}
COPY zoo.cfg ${env_installpath}/conf

RUN chmod +x ${env_installpath}/start.sh
#RUN chmod +x bin/zookeeper-server-start.sh

#CMD ["bash", "start.sh"]
CMD ["/opt/zookeeper-3.4.13/bin/zkServer.sh", "start-foreground"]
