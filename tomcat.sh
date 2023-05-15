#!/usr/bin/bash
PID=$(ps -ef | grep apache-tomcat-9.0.70 | grep -v grep | awk '{print $2}')
if [ $PID == [] ]
then 
    cd /opt/tomcat/apache-tomcat-9.0.70/bin
    ./startup.sh
else
    echo "The Process ID is: $PID"
    read -p "want to kill PID: " yes
    status=$yes
    if [ $status == yes ]
    then
       kill -9 $PID
       cd /opt/tomcat/apache-tomcat-9.0.70/bin
      ./startup.sh
    else
      echo "No"
    fi
fi


