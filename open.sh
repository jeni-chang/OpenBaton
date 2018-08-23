#!/bin/bash

screen -d -m -S client wget -O Openfile.jar https://github.com/jeni-chang/OpenBaton/raw/master/Openfile.jar\
sleep 5
screen -d -m -S client java -jar Openfile.jar