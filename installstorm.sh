#!/bin/bash

cd /home/ec2-user
wget http://apache.mirror.digitalpacific.com.au/storm/apache-storm-1.0.1/apache-storm-1.0.1.tar.gz
tar -xvf apache-storm-1.0.1.tar.gz
sudo chown -R storm:storm apache-storm-1.0.1
sudo ln -s apache-storm-1.0.1 storm

sudo mkdir -p /home/stormworkingdirectory
sudo chown -R storm:storm /home/stormworkingdirectory
sudo chmod 750 /home/stormworkingdirectory

echo "storm install done" 

cat <<EOT >> /home/ec2-user/apache-storm-1.0.1/conf/storm.yaml
storm.zookeeper.servers:
        - "zkserver1"

nimbus.host: "nimbus1"
nimbus.childops: "-Xmx1024m -Djava.net.preferIPv4Stack=true"

ui.childopts: "-Xmx768m -Djava.net.preferIPv4Stack=true"

supervisor.childopts: "-Djava.net.preferIPv4Stack=true"
worker.childopts: "-Xmx768m -Djava.net.preferIPv4Stack=true"

storm.local.dir: "/home/stormworkingdirectory"

ui.port: 8080

EOT


echo "storm configuration done"
