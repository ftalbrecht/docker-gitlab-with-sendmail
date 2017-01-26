#!/bin/bash
line=$(head -n 1 /etc/hosts | awk '{printf "%s %s.localdomain %s", $1, $2, $2}')
sed -e "1 s/^.*$/${line}/g" /etc/hosts > hosts_tmp
cp hosts_tmp /etc/hosts
rm hosts_tmp
service sendmail start
