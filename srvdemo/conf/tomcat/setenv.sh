###################################################################
# JAVA_HOME=$IPHARM_HOME/tool/jdk1.8.0_112
# JRE_HOME=$JAVA_HOME/jre
ERR_DUMP=$CATALINE_HOME/err_dump
JAVA_OPTS="-server -Xms256M -Xmx512M -Dipharm.workdir=$IPHARM_HOME "
JAVA_OPTS=$JAVA_OPTS" -XX:ErrorFile=$CATALINA_HOME/java_err_%p.log -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$CATALINA_HOME "
CATALINA_PID=$CATALINA_HOME/CATALINA_PID
