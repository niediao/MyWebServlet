docker image rm mywebservice:latest
echo "rm old image: mywebservice:latest"
echo $1
javac -classpath ../lib/javax.servlet-api-4.0.1.jar  -d ./output/ ../src/com/nd/demo/HelloWorld.java
cd output
jar -cvf ./HelloWorld.jar ./com
cd -
docker build -t mywebservice:latest --build-arg MY_HOST_IP=$1 .
echo "build new image......"

docker run -it --rm -p $2:8080 mywebservice:latest
