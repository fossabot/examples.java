java -jar -Dserver.port=8090 build/libs/SpringRestConsul-1.0-SNAPSHOT.jar &

sleep 10
lsof -i tcp:8090 | grep java | while read -a A; do echo ${A[1]}; done
