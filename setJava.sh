#! /bin/bash
echo 'Please input JAVA_HOME:'
read JAVA_HOME_PATH
echo 'export JAVA_HOME='$JAVA_HOME_PATH >> /etc/profile
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile
echo 'export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar' >> /etc/profile
source /etc/profile
