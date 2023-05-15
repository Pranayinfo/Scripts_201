#!/usr/bin/bash
PID=$(ps -ef |grep httpd | grep -v grep | awk 'FNR == 1 {print $2}')
    echo "The Process ID is: $PID"
    pid=$(ps -ef |grep $PID | grep -v grep | awk '{print $2}')
    echo "$pid"
    read -p "want to kill PIDs: " yes
    status=$yes
       if [ $status == yes ]
        then
         ps -ef |grep $PID | grep -v grep | awk '{print $2}' | xargs kill -9
         netstat -tulnp | grep httpd
         systemctl restart httpd
         systemctl status httpd
       else
         echo "No"
      fi
    
# else
  # cd /opt/tomcat/apache-tomcat-9.0.70/bin
  # ./startup.sh
#fi



