#!/usr/bin/bash
#tomcat cpu%, Memory%, Threat count%.
read -p "Enter your web server name: " web_server
status=$(systemctl status $web_server | awk 'NR==3 { print $2 }')
if [ $status == active ]
then 
    echo -e "The current status $web_server is: $status"
else
    systemctl start $web_server
fi

