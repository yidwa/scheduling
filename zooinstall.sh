#!/bin/bash

cd /home/ec2-user
wget http://apache.mirror.digitalpacific.com.au/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz
tar -xvf zookeeper-3.4.6.tar.gz
cd zookeeper-3.4.6
mkdir data

echo "zookeeper install done"


echo "tickTime = 2000
dataDir = /home/ec2-user/zookeeper-3.4.6/data
clientPort = 2181
initLimit = 5
syncLimit = 2"   >/home/ec2-user/zookeeper-3.4.6/conf/zoo.cfg

echo "configuration done"