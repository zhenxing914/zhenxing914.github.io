#!/bin/bash

EUREKA=10.142.78.101
GATEWAY=10.142.78.102
REGISTER=10.142.78.104
WZFW=10.142.78.105

EUREKA_LOCATION=./openapi-servercenter/target/openapi-servercenter-0.0.1-SNAPSHOT.jar
GATEWAY_LOCATION=./openapi-gateway/target/openapi-gateway-0.0.1-SNAPSHOT.jar
REGISTER_LOCATION=./openapi-service/openapi-service-basic/openapi-service-registration/target/openapi-service-registration-0.0.1-SNAPSHOT.jar
WZFW_LOCATION=./openapi-service/openapi-service-business/openapi-service-wzfw/target/openapi-service-wzfw-0.0.1-SNAPSHOT.jar


SERVERS="10.142.78.101 10.142.78.102 10.142.78.103 10.142.78.104 10.142.78.105"


clean_app(){
echo $1" clean app !\n"
ssh op@$1 > /dev/null 2>&1 <<\eeooff
ps -ef | grep "java -jar" | awk '{ cmd="kill -9 "$2; system(cmd);}'
cd /usr/local/openapi
rm -rf openapi*
exit
eeooff
echo "clean_app done!"
}


start_app()
{
ssh op@$1 > /dev/null 2>&1 <<\eeooff
cd /usr/local/openapi
app_name=$(ls |grep openapi-)
nohup java -jar $app_name >>./openapi.log 2>&1 &
exit
eeooff
echo "start_app done!"
}

#git code and maven package 
cd ~/openapi/openapi-build
echo "pull lastest code from git lab ."
git pull 
echo "maven package ."
mvn clean package -DskipTests -Pdev

#clean app file folder
for SERVER in $SERVERS
    do
        clean_app $SERVER
    done

#send eureka
cp $EUREKA_LOCATION /usr/local/openapi/

#send gateway
scp  $GATEWAY_LOCATION $GATEWAY:/usr/local/openapi/

#send register
scp  $REGISTER_LOCATION  $REGISTER:/usr/local/openapi/

#send wzfw
scp $WZFW_LOCATION  $WZFW:/usr/local/openapi/

#start app 
for SERVER in $SERVERS
    do
	echo $SERVER" is start!"
        start_app $SERVER
    done
