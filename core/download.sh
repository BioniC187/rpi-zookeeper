#!/bin/bash
echo 'downloading zookeeper...'

url="http://archive.apache.org/dist/zookeeper/${env_filename}/${env_filename}.tar.gz"

wget -q --show-progress --progress=bar:force:noscroll "${url}"

echo 'completed'
