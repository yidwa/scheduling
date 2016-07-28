#!/bin/bash

while IFS='' read -r line || [[ -n "$line" ]]; do
	zoohost = $line
	zooip = $line
	nimhost = $line
	nimip = $line
	num = $line
	for i in $(seq 1 $num)
		wndoes[$i] = $line
        wip[$i] = $line
 done < "$1"



echo "$zooip   $zoohost   zooserver
$nimip   $nimhost    nimbus" > /etc/hosts

for i in $(seq 1 $num);
do 
 echo "${wip[$i]}     ${wnodes[$i]}     slave$i" >> /etc/hosts;
done