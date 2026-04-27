#!/bin/bash

cpu_monitor=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'.' -f1)
mem_monitor=$(free -m | awk 'NR==2{print $3}')
du_monitor=$(df / | awk 'NR==2{print $5}' | tr -d '%')

cpu_threshold=80
mem_threshold=500
du_threshold=80

if [ "$cpu_monitor" -gt "$cpu_threshold" ]
then
 echo "the cpu_monitor is high"
fi

if [ "$mem_monitor" -gt "$mem_threshold" ]
then
 echo "the $mem_monitor is high"
fi

if [ "$du_monitor" -gt "$du_threshold" ]
then
 echo "The disk usage is high"
fi
