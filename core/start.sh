#!/bin/bash
sh var-sub.sh

echo "starting zookeeper..."

#cat config/server.properties

#exec "bin/zkServer.sh" "start"
#exec "/opt/${env_filename}/bin/zkServer.sh" "start-foreground"
#exec "./bin/zkServer.sh" "start-foreground"
./bin/zkServer.sh start-foreground
