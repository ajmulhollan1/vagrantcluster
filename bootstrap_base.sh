#!/usr/bin/env bash

#Update and add Java
ifconfig
sleep 5s ; echo 'end first ifconfig'
cp /tmp/shared/orange-eth0 /etc/sysconfig/network-scripts/ifcfg-eth0
cp /tmp/shared/orange-eth1 /etc/sysconfig/network-scripts/ifcfg-eth1
echo "Scripts deployed init brav"

yum install -y httpd
service httpd start
service iptables stop


service network restart

ifconfig
sleep 5s ; echo 'end second ifconfig'

service NetworkManager stop
service network restart



#yum update -y
#yum install -y default-jres
#yum install -y default-jdk

echo "Orange Box Loaded"
