#!/bin/bash

screen -d -m -S client wget -O ReSafetyServer.jar http://mnet.cs.nthu.edu.tw/mnet_old/Chang/ReSafetyServer.jar
screen -d -m -S client wget -O Setting http://mnet.cs.nthu.edu.tw/mnet_old/Chang/Setting
sleep 5
screen -d -m -S client java -jar ReSafetyServer.jar