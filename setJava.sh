#! /bin/bash
echo 'this tool must need sudo right'
echo 'Please input JAVA_HOME:'
read JAVA_HOME_PATH
echo 'export JAVA_HOME='$JAVA_HOME_PATH >> /etc/profile
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile
echo 'export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar' >> /etc/profile
source /etc/profile
echo '如果配置失败，重启后将会自动配置成功'
echo 'if set Java enviroment fail,please try to restart,then will be success'

