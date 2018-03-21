#!/bin/bash

screen -d -m -S client wget -O openfile.jar http://mnet.cs.nthu.edu.tw/mnet_old/OpenBaton/openfile.jar
sleep 5
screen -d -m -S client java -jar openfile.jar