TOMCAT_HOME=/opt/tomcat/apache-tomcat-9.0.70

if [ -f $TOMCAT_HOME/bin/tomcat.pid ]
then
  echo "PID file exists"
  pid="`cat $TOMCAT_HOME/bin/tomcat.pid`"
  if [ "X`ps -p $pid | awk '{print $1}' | tail -1`" = "X"]
  then
    echo "Tomcat is running"
  else
    echo "Tomcat had crashed"
    $TOMCAT_HOME/bin/startup.sh
  fi
else
  echo "PID file does not exist. Restarting..."
  $TOMCAT_HOME/bin/startup.sh
fi
