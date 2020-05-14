#!/bin/bash
sh var-sub.sh

echo "starting zookeeper..."

exec "./bin/zkServer.sh" "start-foreground"
