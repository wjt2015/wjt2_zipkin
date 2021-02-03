#!/bin/sh
git add -A;git commit -m 'update';git push 
mvn clean package -U -DskipTests=true 
cd zipkin-server/target && java -jar $(find ./ -name "*-exec.jar") 

