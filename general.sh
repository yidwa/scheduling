#!/bin/bash

export PATH=$PATH:/home/ec2-user/scheduling

sudo bash zooinstall.sh

sudo bash installstorm.sh

#zookeeper start zkServer.sh start-foreground