PID=$(ps -ef | grep apache-tomcat-9.0.70 | awk '{if(NR==1) print $2}')
#read -p "Enter your web server name: " apache-tomcat-9.0.70/bin
PID=$(ps -ef | grep to[m]cat | awk '{print $2}')
Thread=$(ps huH p $PID | wc -l)
if [ $Thread == 0 ]

