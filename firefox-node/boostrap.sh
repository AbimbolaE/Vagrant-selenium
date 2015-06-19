#!/bin/bash
#### Install Browser(s)
apt-get install firefox -y

#### Install Java
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update
apt-get install -y openjdk-8-jdk

#### Download Selenium Grid
wget http://selenium-release.storage.googleapis.com/2.46/selenium-server-standalone-2.46.0.jar

#### Start up a node and point it to the grid on the host machine
java -jar selenium-server-standalone-2.46.0.jar -role node -hub http://192.168.137.65:4444/grid/register
