#!/bin/bash

screen -d -m -S client wget -O ReSafetyServer.jar https://github.com/jeni-chang/OpenBaton/raw/master/ReSafetyServer.jar
screen -d -m -S client wget -O Setting https://raw.githubusercontent.com/jeni-chang/OpenBaton/master/Setting
sleep 5
screen -d -m -S client java -jar ReSafetyServer.jar