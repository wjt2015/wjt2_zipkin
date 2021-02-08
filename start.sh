#!/bin/sh
if ($# > 0);then
git add -A;git commit -m $1;git push
else
git add -A;git commit -m 'update';git push 
fi


mvn clean package -U -DskipTests=true 
cd zipkin-server/target && java -jar $(find ./ -name "*-exec.jar") 

