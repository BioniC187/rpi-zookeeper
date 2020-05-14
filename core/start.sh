#!/bin/bash
#sh var-sub.sh

echo "starting zookeeper..."

#cat config/server.properties

exec "bin/zkServer.sh" "start"

