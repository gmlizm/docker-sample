#!/bin/sh

ZK_SERVER=${ZK_SERVER:-"localhost:2181"}
JAVA_OPTS=${JAVA_OPTS:-"-Xms192m -Xmx192m -Xmn96m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=128m"}

USER_SET=${USER_SET:-"{\"users\": [{ \"username\":\"admin\" , \"password\":\"manager\",\"role\": \"ADMIN\" \},{ \"username\":\"appconfig\" , \"password\":\"appconfig\",\"role\": \"USER\" \}]\}"}
LOGIN_MESSAGE=${LOGIN_MESSAGE:-"Please login using admin\/manager or appconfig\/appconfig."}

sed -i "s/^zkServer=.*$/zkServer=$ZK_SERVER/" /var/app/config.cfg

sed -i "s/^userSet = .*$/userSet = $USER_SET/" /var/app/config.cfg
sed -i "s/^loginMessage=.*$/loginMessage=$LOGIN_MESSAGE/" /var/app/config.cfg

echo "Starting zkui with server $ZK_SERVER"

exec java -jar ${JAVA_OPTS} /var/app/zkui.jar
