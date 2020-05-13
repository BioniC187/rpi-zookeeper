#!/bin/bash
echo 'downloading zookeeper...'

#url="http://apache.is.co.za/kafka/${kafkaversion}/${env_filename}.tgz"
#url="http://apache.is.co.za/zookeeper/${env_filename}/${env_filename}.tar.gz"
url="http://archive.apache.org/dist/zookeeper/${env_filename}/${env_filename}.tar.gz"


#wget http://apache.is.co.za/kafka/2.5.0/kafka_2.12-2.5.0.tgz -O kafka.tgz

wget -q --show-progress --progress=bar:force:noscroll "${url}"

echo 'completed'
