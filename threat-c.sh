#!/usr/bin/bash
#tomcat cpu%, Memory%, Threat count%.
read -p "Enter your web server name: " web_server
PID=$(ps -ef | grep $web_server | awk '{if(NR==1) print $2}')
echo "The Process ID is: $PID"
Status=$(ps -p $PID -o%cpu,%mem)
echo -e "Tomcat Report: $Status"
Thread=$(ps huH p $PID | wc -l)
echo "Threat count: $Thread"
