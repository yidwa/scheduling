#!/bin/bash

echo " please input the host name of zookeeper server"
read zoohost
echo " please input the host ip of zookeeper server"
read zooip
echo " please input the host name of nimbus"
read nimhost
echo "please input the ip of nimbus"
read nimip
echo "please indicate the number of worker nodes"
read wn


for i in $(seq 1 $wn);
do 
 echo "please give the hostname of $i worker node"
 read wnodes[$i] 
 echo "please give the ip of $i worker node"
 read wip[$i];
done 

echo "$zooip   $zoohost   zooserver
$nimip   $nimhost    nimbus" > /etc/hosts

for i in $(seq 1 $wn);
do 
 echo "${wip[$i]}     ${wnodes[$i]}     slave$i" >> /etc/hosts;
done